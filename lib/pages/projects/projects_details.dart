import 'package:gspdt/constants/constants.dart';

class ProjectDetails extends StatelessWidget {
  final Map<String, dynamic> dataProject;
  const ProjectDetails({super.key, required this.dataProject});

  @override
  Widget build(BuildContext context) {
    List cacc = Controllers().generateCaccList(
        dataProject['IMAGE_LIST_LANDSCAPE'].length, [1, 1, 2, 2, 1, 1]);
    List macc = Controllers().generateMaccList(
        dataProject['IMAGE_LIST_LANDSCAPE'].length, [1, 1, 1, 1, 1, 1]);
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          dataProject['PROJECT_NAME'],
                          style: AppTextstyles().h1Light(),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          dataProject['HIGHLIGHT'],
                          style: AppTextstyles().h3Light(),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(dataProject['IMAGE_MAIN']),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    dataProject['DESCRIPTION'],
                                    style: AppTextstyles().paragraphLight(),
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  StaggeredGrid.count(
                                    crossAxisCount: 6,
                                    mainAxisSpacing: 2,
                                    crossAxisSpacing: 2,
                                    children: [
                                      StaggeredGridTile.count(
                                          crossAxisCellCount: 2,
                                          mainAxisCellCount: 1,
                                          child: Container(
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Tanggal Proyek Dimulai: ',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: AppTextstyles(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      darkTextColor: AppThemes
                                                          .secondaryTextLight,
                                                    ).customText(),
                                                  ),
                                                  SizedBox(
                                                    height: 8.0,
                                                  ),
                                                  Text(
                                                      dataProject['DATE_START'],
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: AppTextstyles(
                                                              darkTextColor:
                                                                  AppThemes
                                                                      .accentTextLight,
                                                              font: 'Roboto')
                                                          .customText()),
                                                ],
                                              ),
                                            ),
                                          )),
                                      StaggeredGridTile.count(
                                          crossAxisCellCount: 2,
                                          mainAxisCellCount: 1,
                                          child: Container(
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Tanggal Proyek Selesai: ',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: AppTextstyles(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      darkTextColor: AppThemes
                                                          .secondaryTextLight,
                                                    ).customText(),
                                                  ),
                                                  SizedBox(
                                                    height: 8.0,
                                                  ),
                                                  Text(dataProject['DATE_END'],
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: AppTextstyles(
                                                              darkTextColor:
                                                                  AppThemes
                                                                      .accentTextLight,
                                                              font: 'Roboto')
                                                          .customText()),
                                                ],
                                              ),
                                            ),
                                          )),
                                      StaggeredGridTile.count(
                                          crossAxisCellCount: 2,
                                          mainAxisCellCount: 1,
                                          child: Container(
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Pemilik Proyek: ',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: AppTextstyles(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      darkTextColor: AppThemes
                                                          .secondaryTextLight,
                                                    ).customText(),
                                                  ),
                                                  SizedBox(
                                                    height: 8.0,
                                                  ),
                                                  Text(
                                                      dataProject[
                                                          'PROJECT_OWNER'],
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: AppTextstyles(
                                                              darkTextColor:
                                                                  AppThemes
                                                                      .accentTextLight,
                                                              font: 'Roboto')
                                                          .customText()),
                                                ],
                                              ),
                                            ),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        LingkupPekerjaan(dataProject: dataProject),
                        SizedBox(
                          height: 16.0,
                        ),
                        TantanganSolusi(dataProject: dataProject),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Galeri Proyek',
                          style: AppTextstyles().h2Light(),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        StaggeredGrid.count(
                          crossAxisCount: 4,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          children: List.generate(
                              dataProject['IMAGE_LIST_LANDSCAPE'].length,
                              (index) => StaggeredGridTile.count(
                                    crossAxisCellCount: cacc[index],
                                    mainAxisCellCount: macc[index],
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1,
                                              color: AppThemes
                                                  .secondaryColorLight)),
                                      child: Image.asset(
                                        dataProject['IMAGE_LIST_LANDSCAPE']
                                            [index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ),
            Positioned(top: 0, left: 0, right: 0, child: CustomHeader())
          ],
        ),
      ),
    );
  }
}

class LingkupPekerjaan extends StatelessWidget {
  final Map<String, dynamic> dataProject;
  const LingkupPekerjaan({super.key, required this.dataProject});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          dataProject['LIST_OPT_2']['LIST_TITLE'],
          style: AppTextstyles().h2Light(),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          dataProject['LIST_OPT_2']['LIST_DESCRIPTION'],
          style: AppTextstyles().subheadingLight(),
        ),
        SizedBox(
          height: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            dataProject['LIST_OPT_2']['LIST'].length,
            (index) => Text.rich(TextSpan(children: [
              TextSpan(
                  text: '${index + 1}. ' +
                      dataProject['LIST_OPT_2']['LIST'][index]['POIN']
                          .split(':')[0] +
                      ': ',
                  style:
                      AppTextstyles(fontWeight: FontWeight.bold, fontSize: 18)
                          .customText()),
              TextSpan(
                  text: dataProject['LIST_OPT_2']['LIST'][index]['POIN']
                      .split(':')[1],
                  style: AppTextstyles().paragraphLight()),
              TextSpan(text: '\n')
            ])),
          ),
        ),
      ],
    );
  }
}

class TantanganSolusi extends StatelessWidget {
  final Map<String, dynamic> dataProject;
  const TantanganSolusi({super.key, required this.dataProject});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          dataProject['LIST_OPT_1']['LIST_TITLE'],
          style: AppTextstyles().h2Light(),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          dataProject['LIST_OPT_1']['LIST_DESCRIPTION'],
          style: AppTextstyles().subheadingLight(),
        ),
        SizedBox(
          height: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            dataProject['LIST_OPT_1']['LIST'].length,
            (index) => Text.rich(TextSpan(children: [
              TextSpan(
                  text: '${index + 1}. ' +
                      dataProject['LIST_OPT_1']['LIST'][index]['POIN']
                          .split(':')[0] +
                      ': ',
                  style:
                      AppTextstyles(fontWeight: FontWeight.bold, fontSize: 18)
                          .customText()),
              TextSpan(
                  text: dataProject['LIST_OPT_1']['LIST'][index]['POIN']
                      .split(':')[1],
                  style: AppTextstyles().paragraphLight()),
              TextSpan(text: '\n')
            ])),
          ),
        ),
      ],
    );
  }
}
