import 'package:gspdt/constants/constants.dart';

class ArticleDetailsPage extends StatelessWidget {
  final Map<String, dynamic> dataBlog;
  const ArticleDetailsPage({super.key, required this.dataBlog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 100),
                        Text(dataBlog['TITLE'],
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
                          dataBlog['DATE'] + ' oleh: ' + dataBlog['AUTHOR'],
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(dataBlog['IMAGE_MAIN']),
                        const SizedBox(height: 10),
                        Text(dataBlog['HIGHLIGHT'],
                            style: AppTextstyles().paragraphLight()),
                        const SizedBox(height: 20),
                        Text(dataBlog['DESCRIPTION'],
                            style: AppTextstyles().paragraphLight()),
                        const SizedBox(height: 32),
                        dataBlog['LIST_OPT_1'] == ''
                            ? Container()
                            : Text(
                                dataBlog['LIST_OPT_1']['LIST_TITLE'],
                                style: AppTextstyles().h2Light(),
                              ),
                        const SizedBox(height: 10),
                        dataBlog['LIST_OPT_1'] == ''
                            ? Container()
                            : Text(
                                dataBlog['LIST_OPT_1']['LIST_DESCRIPTION'],
                                style: AppTextstyles().paragraphLight(),
                              ),
                        const SizedBox(height: 10),
                        dataBlog['LIST_OPT_1'] == ''
                            ? Container()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                    dataBlog['LIST_OPT_1']['LIST'].length,
                                    (index) => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            dataBlog['LIST_OPT_1']['LIST']
                                                        [index]['POIN_IMAGE'] ==
                                                    ''
                                                ? Container()
                                                : Image.asset(
                                                    dataBlog['LIST_OPT_1']
                                                            ['LIST'][index]
                                                        ['POIN_IMAGE'],
                                                    width: double.infinity,
                                                    height: 100,
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                            Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: '${index + 1}. ' +
                                                      dataBlog['LIST_OPT_1']
                                                                  ['LIST']
                                                              [index]['POIN']
                                                          .split(':')[0] +
                                                      ': ',
                                                  style: AppTextstyles()
                                                      .subheadingLight()),
                                              TextSpan(
                                                  text: dataBlog['LIST_OPT_1']
                                                              ['LIST'][index]
                                                          ['POIN']
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
                        dataBlog['LIST_OPT_2'] == ''
                            ? Container()
                            : Text(
                                dataBlog['LIST_OPT_2']['LIST_TITLE'],
                                style: AppTextstyles().subheadingLight(),
                              ),
                        const SizedBox(height: 10),
                        dataBlog['LIST_OPT_2'] == ''
                            ? Container()
                            : Text(
                                dataBlog['LIST_OPT_2']['LIST_DESCRIPTION'],
                                style: AppTextstyles().paragraphLight(),
                              ),
                        const SizedBox(height: 10),
                        dataBlog['LIST_OPT_2'] == ''
                            ? Container()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                    dataBlog['LIST_OPT_2']['LIST'].length,
                                    (index) => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            dataBlog['LIST_OPT_2']['LIST']
                                                        [index]['POIN_IMAGE'] ==
                                                    ''
                                                ? Container()
                                                : Image.asset(
                                                    dataBlog['LIST_OPT_2']
                                                            ['LIST'][index]
                                                        ['POIN_IMAGE']),
                                            Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: '${index + 1}. ' +
                                                      dataBlog['LIST_OPT_2']
                                                                  ['LIST']
                                                              [index]['POIN']
                                                          .split(':')[0] +
                                                      ': ',
                                                  style: AppTextstyles()
                                                      .subheadingLight()),
                                              TextSpan(
                                                  text: dataBlog['LIST_OPT_2']
                                                              ['LIST'][index]
                                                          ['POIN']
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
                        const SizedBox(height: 10),
                        Text(
                          dataBlog['CONCLUSION'],
                          style: AppTextstyles().paragraphLight(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                            const OtherArtcilesList()
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          const Positioned(
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
  const OtherArtcilesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DataBlog.myArticlesList['NAME'].length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                DataBlog.myArticlesList['IMAGE_MAIN'][index],
                width: double.infinity,
                height: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
            ListTile(
              title: Text(
                DataBlog.myArticlesList['TITLE'][index],
                style: AppTextstyles().h3Light(),
              ),
              subtitle: Text(
                DataBlog.myArticlesList['HIGHLIGHT'][index],
                style: AppTextstyles().paragraphLight(),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ArticleDetailsPage(
                    dataBlog: DataBlog.myArticlesList['NAME'][index],
                  ),
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
