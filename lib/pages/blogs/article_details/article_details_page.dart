import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/article_model.dart';

class ArticleDetailsPage extends StatefulWidget {
  final ListArticleModel response;
  final Datum article;
  const ArticleDetailsPage(
      {super.key, required this.article, required this.response});

  @override
  State<ArticleDetailsPage> createState() => _ArticleDetailsPageState();
}

class _ArticleDetailsPageState extends State<ArticleDetailsPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppbar(parentWidth: screenWidth),
      drawer: const Drawer(
        child: CustomMobileHeader(),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //LEFT SIDE
                  screenWidth <= AppSizes.TABLET_SIZE
                      ? Container()
                      : Expanded(flex: 1, child: Container()),

                  //BODY
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                            height:
                                screenWidth <= AppSizes.TABLET_SIZE ? 0 : 100),
                        Text(widget.article.attributes!.articleTitle!,
                            style: AppTextstyles().h1Light()),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 5,
                              color: AppThemes.primaryColorLight,
                            ),
                            Container(
                              width: 50,
                              height: 5,
                              color: AppThemes.primaryAccentLight,
                            ),
                            Container(
                              width: 50,
                              height: 5,
                              color: AppThemes.secondaryColorLight,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '${widget.article.attributes!.articleDate!}, oleh: ${widget.article.attributes!.articleAuthor}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.network(
                            '${AppStrings.API_ADDRESS}${widget.article.attributes!.articleMainImage!.data!.attributes!.url!}'),
                        const SizedBox(height: 10),
                        Text(widget.article.attributes!.articleHighlight!,
                            style: AppTextstyles().paragraphLight()),
                        const SizedBox(height: 20),
                        Text(widget.article.attributes!.articleDescription!,
                            style: AppTextstyles().paragraphLight()),
                        const SizedBox(height: 32),
                        widget.article.attributes!.articleListOpt1 == null
                            ? Container()
                            : Text(
                                widget.article.attributes!.articleListOpt1!
                                    .listTitle!,
                                style: AppTextstyles().h2Light(),
                              ),
                        const SizedBox(height: 10),
                        widget.article.attributes!.articleListOpt1 == null
                            ? Container()
                            : Text(
                                widget.article.attributes!.articleListOpt1!
                                    .listDescription!,
                                style: AppTextstyles().paragraphLight(),
                              ),
                        const SizedBox(height: 10),
                        widget.article.attributes!.articleListOpt1 == null
                            ? Container()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                    widget.article.attributes!.articleListOpt1!
                                        .list!.length,
                                    (index) => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            widget
                                                        .article
                                                        .attributes!
                                                        .articleListOpt1!
                                                        .list![index]
                                                        .poinImage ==
                                                    ""
                                                ? Container()
                                                : Image.asset(
                                                    widget
                                                        .article
                                                        .attributes!
                                                        .articleListOpt1!
                                                        .list![index]
                                                        .poinImage!,
                                                    width: double.infinity,
                                                    height: 100,
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                            Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      '${index + 1}. ${widget.article.attributes!.articleListOpt1!.list![index].poin!.split(':')[0]}: ',
                                                  style: AppTextstyles()
                                                      .h3Light()),
                                              TextSpan(
                                                  text: widget
                                                      .article
                                                      .attributes!
                                                      .articleListOpt1!
                                                      .list![index]
                                                      .poin!
                                                      .split(':')[1],
                                                  style: AppTextstyles()
                                                      .paragraphLight())
                                            ])),
                                            const SizedBox(
                                              height: 12.0,
                                            )
                                          ],
                                        )),
                              ),
                        const SizedBox(
                          height: 32,
                        ),
                        widget.article.attributes!.articleListOpt2 == null
                            ? Container()
                            : Text(
                                widget.article.attributes!.articleListOpt2!
                                    .listTitle!,
                                style: AppTextstyles().subheadingLight(),
                              ),
                        const SizedBox(height: 10),
                        widget.article.attributes!.articleListOpt2 == null
                            ? Container()
                            : Text(
                                widget.article.attributes!.articleListOpt2!
                                    .listDescription!,
                                style: AppTextstyles().paragraphLight(),
                              ),
                        const SizedBox(height: 10),
                        widget.article.attributes!.articleListOpt2 == null
                            ? Container()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                    widget.article.attributes!.articleListOpt2!
                                        .list!.length,
                                    (index) => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            widget
                                                        .article
                                                        .attributes!
                                                        .articleListOpt2!
                                                        .list![index]
                                                        .poinImage ==
                                                    ""
                                                ? Container()
                                                : Image.asset(widget
                                                    .article
                                                    .attributes!
                                                    .articleListOpt2!
                                                    .list![index]
                                                    .poinImage!),
                                            Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      '${index + 1}. ${widget.article.attributes!.articleListOpt2!.list![index].poin!.split(':')[0]}: ',
                                                  style: AppTextstyles()
                                                      .h3Light()),
                                              TextSpan(
                                                  text: widget
                                                      .article
                                                      .attributes!
                                                      .articleListOpt2!
                                                      .list![index]
                                                      .poin!
                                                      .split(':')[1],
                                                  style: AppTextstyles()
                                                      .paragraphLight())
                                            ])),
                                            const SizedBox(
                                              height: 12.0,
                                            ),
                                          ],
                                        )),
                              ),
                        const SizedBox(height: 10),
                        Text(
                          widget.article.attributes!.articleConclusion!,
                          style: AppTextstyles().paragraphLight(),
                        ),
                        const SizedBox(
                          height: 32.0,
                        ),
                        screenWidth <= AppSizes.TABLET_SIZE
                            ? Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: screenWidth / 4,
                                        height: 5,
                                        color: AppThemes.primaryColorLight,
                                      ),
                                      Container(
                                        width: screenWidth / 4,
                                        height: 5,
                                        color: AppThemes.primaryAccentLight,
                                      ),
                                      Container(
                                        width: screenWidth / 4,
                                        height: 5,
                                        color: AppThemes.secondaryColorLight,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Artike Lainnya",
                                    style: AppTextstyles().h3Light(),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  OtherArtcilesList(
                                    response: widget.response,
                                  )
                                ],
                              )
                            : Container()
                      ],
                    ),
                  ),
                  screenWidth <= AppSizes.TABLET_SIZE
                      ? Container()
                      : Expanded(
                          flex: 2,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 100,
                                ),
                                Text(
                                  'Artikel Lainnya',
                                  style: AppTextstyles().h2Light(),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                OtherArtcilesList(response: widget.response)
                              ],
                            ),
                          )),
                ],
              ),
            ),
          ),
          screenWidth <= AppSizes.TABLET_SIZE
              ? Container()
              : const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CustomHeader(),
                )
        ],
      ),
    );
  }
}

class OtherArtcilesList extends StatelessWidget {
  final ListArticleModel response;
  const OtherArtcilesList({super.key, required this.response});

  @override
  Widget build(BuildContext context) {
    List<int> randomNumbers = BlogController()
        .generateUniqueRandomNumbers(4, 0, response.data!.length - 1);
    return ListView.builder(
      itemCount: randomNumbers.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                '${AppStrings.API_ADDRESS}${response.data![randomNumbers[index]].attributes!.articleMainImage!.data!.attributes!.url!}',
                width: double.infinity,
                height: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
            ListTile(
              title: Text(
                response.data![randomNumbers[index]].attributes!.articleTitle!,
                style: AppTextstyles().h3Light(),
              ),
              subtitle: Text(
                response
                    .data![randomNumbers[index]].attributes!.articleHighlight!,
                style: AppTextstyles().paragraphLight(),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ArticleDetailsPage(
                      article: response.data![randomNumbers[index]],
                      response: response),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            )
          ],
        );
      },
    );
  }
}
