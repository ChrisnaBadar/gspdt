import 'package:gspdt/constants/constants.dart';

class BlogPageBanner extends StatefulWidget {
  const BlogPageBanner({super.key});

  @override
  State<BlogPageBanner> createState() => _BlogPageBannerState();
}

class _BlogPageBannerState extends State<BlogPageBanner> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = screenWidth;
    List<int> randomNumbers = BlogController().generateUniqueRandomNumbers(
        3, 0, DataBlog.myArticlesList['NAME'].length - 1);
    List<int> tabletRandomNumbers = BlogController()
        .generateUniqueRandomNumbers(
            4, 0, DataBlog.myArticlesList['NAME'].length - 1);
    return Container(
      width: screenWidth,
      color: AppThemes.primaryColorDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: screenWidth <= AppSizes.TABLET_SIZE ? 0 : 100,
          ),
          SizedBox(
            child: Text(
              AppStrings().BLOG_HEADER,
              textAlign: TextAlign.center,
              style: AppTextstyles(
                      font: 'Montserrat',
                      fontSize: screenWidth * .08,
                      fontWeight: FontWeight.bold)
                  .customTextLightTheme(),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          //Banner Body
          screenWidth < AppSizes.PHONE_SIZE
              ? _phoneBody(screenWidth, screenHeight, randomNumbers, context)
              : screenWidth <= AppSizes.TABLET_SIZE
                  ? _tabletBody(
                      screenWidth, screenHeight, tabletRandomNumbers, context)
                  : _desktopBody(screenWidth, screenHeight, randomNumbers),

          SizedBox(
            height: 32.0,
          )
        ],
      ),
    );
  }
}

Widget _desktopBody(screenWidth, screenHeight, randomNumbers) {
  return Row(
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
                  title: DataBlog.myArticlesList['TITLE'][randomNumbers[index]],
                  description: DataBlog.myArticlesList['HIGHLIGHT'][index],
                  dataBlog: DataBlog.myArticlesList['NAME']
                      [randomNumbers[index]],
                  featured: false,
                )),
      )
    ],
  );
}

Widget _tabletBody(screenWidth, screenHeight, tabletRandomNumbers, context) {
  return StaggeredGrid.count(
    crossAxisCount: 4,
    mainAxisSpacing: 8,
    crossAxisSpacing: 8,
    children: List.generate(
        tabletRandomNumbers.length,
        (index) => StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ArticleDetailsPage(
                    dataBlog: DataBlog.myArticlesList['NAME']
                        [tabletRandomNumbers[index]],
                  ),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      DataBlog.myArticlesList['IMAGE_MAIN']
                          [tabletRandomNumbers[index]],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )),
                  Expanded(
                      child: ListTile(
                    title: Text(
                      DataBlog.myArticlesList['TITLE']
                          [tabletRandomNumbers[index]],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextstyles(
                              font: 'Poppins',
                              fontSize: screenWidth * .023,
                              fontWeight: FontWeight.bold)
                          .customTextLightTheme(),
                    ),
                    subtitle: Text(
                      DataBlog.myArticlesList['HIGHLIGHT']
                          [tabletRandomNumbers[index]],
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextstyles(
                        font: 'Poppins',
                        fontSize: screenWidth * .020,
                      ).customTextLightTheme(),
                    ),
                  ))
                ],
              ),
            ))),
  );
}

Widget _phoneBody(screenWidth, screenHeight, randomNumbers, context) {
  return StaggeredGrid.count(
    crossAxisCount: 2,
    mainAxisSpacing: 8,
    crossAxisSpacing: 8,
    children: List.generate(
        3,
        (index) => StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ArticleDetailsPage(
                    dataBlog: DataBlog.myArticlesList['NAME']
                        [randomNumbers[index]],
                  ),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      DataBlog.myArticlesList['IMAGE_MAIN']
                          [randomNumbers[index]],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )),
                  Expanded(
                      child: ListTile(
                    title: Text(
                      DataBlog.myArticlesList['TITLE'][randomNumbers[index]],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextstyles(
                              font: 'Poppins',
                              fontSize: screenWidth * .023,
                              fontWeight: FontWeight.bold)
                          .customTextLightTheme(),
                    ),
                    subtitle: Text(
                      DataBlog.myArticlesList['HIGHLIGHT']
                          [randomNumbers[index]],
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextstyles(
                        font: 'Poppins',
                        fontSize: screenWidth * .020,
                      ).customTextLightTheme(),
                    ),
                  ))
                ],
              ),
            ))),
  );
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
              style: AppTextstyles(
                      fontSize: width * .03,
                      fontWeight: FontWeight.bold,
                      font: 'Poppins')
                  .customTextLightTheme(),
            ),
            subtitle: Text(
              description!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextstyles(fontSize: width * .0175, font: 'Poppins')
                  .customTextLightTheme(),
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
