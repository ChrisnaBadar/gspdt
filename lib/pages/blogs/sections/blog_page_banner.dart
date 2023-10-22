import 'package:gspdt/constants/constants.dart';

class BlogPageBanner extends StatelessWidget {
  const BlogPageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = screenWidth;
    List<int> randomNumbers = BlogController().generateUniqueRandomNumbers(
        3, 0, DataBlog.myArticlesList['NAME'].length - 1);
    return Container(
      width: screenWidth,
      color: AppThemes.primaryColorDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          SizedBox(
            child: Text(
              'Blog & Artikel',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 150.0,
                      color: AppThemes.primaryTextDark,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          Row(
            children: [
              BlogThumb(
                width: (screenWidth / 3) * 2,
                height: ((screenHeight / 4) * 3) - 150,
                appImagesPath: DataBlog.buildingCrackCauses()['IMAGE_MAIN'],
                title: DataBlog.buildingCrackCauses()['TITLE'],
                description: DataBlog.buildingCrackCauses()['HIGHLIGHT'],
                dataBlog: DataBlog.buildingCrackCauses(),
                featured: true,
              ),
              Column(
                children: List.generate(
                    randomNumbers.length,
                    (index) => BlogThumb(
                          width: screenWidth / 3,
                          height: (screenHeight / 4) - 50,
                          appImagesPath: DataBlog.myArticlesList['IMAGE_MAIN']
                              [randomNumbers[index]],
                          title: DataBlog.myArticlesList['TITLE']
                              [randomNumbers[index]],
                          description: DataBlog.myArticlesList['HIGHLIGHT']
                              [index],
                          dataBlog: DataBlog.myArticlesList['NAME']
                              [randomNumbers[index]],
                          featured: false,
                        )),
              )
            ],
          ),
          SizedBox(
            height: 32.0,
          )
        ],
      ),
    );
  }
}

class BlogThumb extends StatelessWidget {
  final bool featured;
  final double width;
  final double height;
  final String appImagesPath;
  final String? title;
  final String? description;
  final Map<String, dynamic> dataBlog;
  const BlogThumb(
      {super.key,
      required this.width,
      required this.height,
      required this.appImagesPath,
      required this.title,
      required this.description,
      required this.dataBlog,
      required this.featured});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Column(
        children: [
          appImagesPath == ''
              ? Container()
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(appImagesPath,
                      width: double.infinity,
                      height: featured ? null : 125,
                      fit: BoxFit.fitWidth),
                ),
          ListTile(
            title: Text(
              title!,
              maxLines: featured ? null : 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextstyles().h1Dark(),
            ),
            subtitle: Text(
              description!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextstyles().paragraphDark(),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ArticleDetailsPage(
                  dataBlog: dataBlog,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
