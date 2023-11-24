import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/article_model.dart';
import 'package:dartz/dartz.dart' as dartz;

class BlogListSection extends StatefulWidget {
  const BlogListSection({super.key});

  @override
  State<BlogListSection> createState() => _BlogListSectionState();
}

class _BlogListSectionState extends State<BlogListSection> {
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
            List<int> randomNumbers =
                BlogController().generateUniqueRandomNumbers(
                    screenWidth <= AppSizes.PHONE_SIZE
                        ? 1
                        : screenWidth <= AppSizes.TABLET_SIZE
                            ? 2
                            : screenWidth <= AppSizes.LARGE_SIZE
                                ? 3
                                : 4,
                    0,
                    response!.data!.length - 1);
            return Column(
              children: [
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  'Artikel-Artikel',
                  style: AppTextstyles().h2Light(),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Selamat datang di halaman utama kami! Di sini, Anda akan menemukan beragam artikel informatif tentang konstruksi, bangunan, dan standar kebersihan yang pasti akan bermanfaat bagi Anda. Jelajahi pengetahuan terkini kami untuk mendukung proyek-proyek Anda.',
                    textAlign: TextAlign.center,
                    style: AppTextstyles().paragraphLight(),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: List.generate(
                      randomNumbers.length,
                      (index) => Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ArticleDetailsPage(
                                        article: response
                                            .data![randomNumbers[index]],
                                        response: response),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Image.network(
                                        '${AppStrings.API_ADDRESS}${response.data![randomNumbers[index]].attributes!.articleMainImagePortrait!.data!.attributes!.url!}'),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 0.0,
                                      right: 0.0,
                                      top: MediaQuery.of(context).size.height /
                                          1.5, // Half height
                                      child: Container(
                                        color: Colors.black.withOpacity(0.5),
                                        alignment: Alignment.center,
                                        child: Text(
                                          response.data![randomNumbers[index]]
                                              .attributes!.articleTitle!,
                                          textAlign: TextAlign.center,
                                          style: AppTextstyles().h2Dark(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
              ],
            );
          } else {
            return Center(
              child: Text("Data Tidak Dapat Diambil Dari Server."),
            );
          }
        });
  }
}
