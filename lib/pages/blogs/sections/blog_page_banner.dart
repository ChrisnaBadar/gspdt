import 'package:gspdt/constants/constants.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:gspdt/models/article_model.dart';

class BlogPageBanner extends StatefulWidget {
  const BlogPageBanner({super.key});

  @override
  State<BlogPageBanner> createState() => _BlogPageBannerState();
}

class _BlogPageBannerState extends State<BlogPageBanner> {
  Future<dartz.Either<String, ListArticleModel>>? listArticleModel;

  @override
  void initState() {
    // TODO: implement initState
    listArticleModel = DbServices().fetchArticleData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = screenWidth;
    return FutureBuilder(
        future: listArticleModel,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            final result = snapshot.data!.fold(
                (l) => 'Data Not Exist', (r) => ListArticleModel(data: r.data));
            final response =
                result != String ? result as ListArticleModel : null;
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
                  const SizedBox(
                    height: 32.0,
                  ),
                  _desktopBody(screenWidth, screenHeight, response!, context),
                  //Banner Body
                  // screenWidth < AppSizes.PHONE_SIZE
                  // ? _phoneBody(screenWidth, screenHeight, context)
                  // : screenWidth <= AppSizes.TABLET_SIZE
                  // ? _tabletBody(screenWidth, screenHeight, context)
                  // : _desktopBody(screenWidth, screenHeight, response!),

                  const SizedBox(
                    height: 32.0,
                  )
                ],
              ),
            );
          } else {
            return const Center(
              child: Text('Artikel tidak dapat ditemukan'),
            );
          }
        });
  }
}

Widget _desktopBody(
    screenWidth, screenHeight, ListArticleModel response, context) {
  List<int> randomNumbers = BlogController()
      .generateUniqueRandomNumbers(4, 0, response.data!.length - 1);
  List<int> phoneRandomNumbers = BlogController()
      .generateUniqueRandomNumbers(2, 0, response.data!.length - 1);
  List<int> cacc = [4, 2, 2, 2];
  List<int> macc = [3, 1, 1, 1];

  List<int> tabletCacc = [3, 3, 3, 3];
  List<int> tabletMacc = [3, 3, 3, 3];

  List<int> phoneCacc = [6, 6];
  List<int> phoneMacc = [5, 5];

  print('phone: $phoneRandomNumbers, normal: $randomNumbers');
  return StaggeredGrid.count(
    crossAxisCount: 6,
    mainAxisSpacing: 8,
    crossAxisSpacing: 8,
    children: List.generate(
        screenWidth <= AppSizes.PHONE_SIZE
            ? phoneRandomNumbers.length
            : randomNumbers.length,
        (index) => StaggeredGridTile.count(
            crossAxisCellCount: screenWidth <= AppSizes.PHONE_SIZE
                ? phoneCacc[index]
                : screenWidth <= AppSizes.DESKTOP_SIZE
                    ? tabletCacc[index]
                    : cacc[index],
            mainAxisCellCount: screenWidth <= AppSizes.PHONE_SIZE
                ? phoneMacc[index]
                : screenWidth <= AppSizes.DESKTOP_SIZE
                    ? tabletMacc[index]
                    : macc[index],
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ArticleDetailsPage(
                    article: response.data![randomNumbers[index]],
                    response: response,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                      flex: screenWidth <= AppSizes.DESKTOP_SIZE
                          ? 3
                          : index == 0
                              ? 3
                              : 2,
                      child: Image.network(
                        '${AppStrings.API_ADDRESS}${response.data![randomNumbers[index]].attributes!.articleMainImage!.data!.attributes!.url!}',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        response.data![randomNumbers[index]].attributes!
                            .articleTitle!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextstyles().h3Dark(),
                      ),
                      subtitle: Text(
                        response.data![randomNumbers[index]].attributes!
                            .articleHighlight!,
                        maxLines: index == 0 ? 2 : 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextstyles().paragraphDark(),
                      ),
                    ),
                  )
                ],
              ),
            ))),
  );
}
