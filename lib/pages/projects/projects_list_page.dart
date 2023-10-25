import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/pages/projects/projects_details.dart';

class ProjectsListPage extends StatelessWidget {
  const ProjectsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                //TITLE
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 64.0, vertical: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: 'Portofolio Pelaksanaan ',
                            style: AppTextstyles().h1Light()),
                        TextSpan(
                            text:
                                'Konstruksi Bangunan, Perencanaan Pembangunan dan Area Cleaning Service ',
                            style: AppTextstyles(myOpacity: .5).h1Light()),
                        TextSpan(
                            text: 'PT. GSP ', style: AppTextstyles().h1Light()),
                      ]),
                    ),
                  ),
                ),
                //DESCRIPTION
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 64.0, vertical: 16),
                  child: Text(
                    'Berikut ini adalah daftar portofolio untuk setiap proyek pekerjaan perusahaan dari mulai Perencanaan Design Gedung, Pelaksanaan Pembangunan Gedung dan Outsource Cleaning Service.',
                    style: AppTextstyles().paragraphLight(),
                  ),
                ),
                //PROJECT LIST 3 TILE SECTION
                const ProjectHighlight(),
                ProjectsListPortfolio(
                  dataProject: DataProjects.myProjectsList,
                )
              ],
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

class ProjectHighlight extends StatelessWidget {
  const ProjectHighlight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64.0),
      child: Column(
        children: [
          const SizedBox(
            height: 16.0,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: 'PROJECTS ', style: AppTextstyles().h1Light()),
            TextSpan(
                text: 'HIGHLIGHT',
                style: AppTextstyles(myOpacity: .5).h1Light())
          ])),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 540,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0))),
                        child: Image.asset(DataProjects
                            .myProjectsList['IMAGE_MAIN_PORTRAIT']![0]),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0))),
                        child: ListTile(
                          title: Text(
                            DataProjects.myProjectsList['PROJECT_NAME']![0],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextstyles().h2Light(),
                          ),
                          subtitle: Text(
                            DataProjects.myProjectsList['HIGHLIGHT']![0],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextstyles().paragraphLight(),
                          ),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProjectDetails(
                                dataProject:
                                    DataProjects.myProjectsList['NAME']![0],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 540,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0))),
                        child: Image.asset(DataOutsource
                            .myProjectsList['IMAGE_MAIN_PORTRAIT']![0]),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0))),
                        child: ListTile(
                          title: Text(
                            DataOutsource.myProjectsList['PROJECT_NAME']![0],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextstyles().h2Light(),
                          ),
                          subtitle: Text(
                            DataOutsource.myProjectsList['HIGHLIGHT']![0],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextstyles().paragraphLight(),
                          ),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProjectDetails(
                                dataProject:
                                    DataOutsource.myProjectsList['NAME']![0],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 540,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0))),
                        child: Image.asset(DataProjects
                            .myProjectsList['IMAGE_MAIN_PORTRAIT']![0]),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0))),
                        child: ListTile(
                          title: Text(
                            DataProjects.myProjectsList['PROJECT_NAME']![0],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextstyles().h2Light(),
                          ),
                          subtitle: Text(
                            DataProjects.myProjectsList['HIGHLIGHT']![0],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextstyles().paragraphLight(),
                          ),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProjectDetails(
                                dataProject:
                                    DataProjects.myProjectsList['NAME']![0],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectsListPortfolio extends StatelessWidget {
  final Map<String, dynamic> dataProject;
  const ProjectsListPortfolio({super.key, required this.dataProject});

  @override
  Widget build(BuildContext context) {
    List cacc = Controllers()
        .generateCaccList(dataProject['IMAGE_MAIN'].length, [2, 2, 1, 1, 4]);
    List macc = Controllers()
        .generateMaccList(dataProject['IMAGE_MAIN'].length, [2, 1, 1, 1, 2]);
    return StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: List.generate(
            cacc.length,
            (index) => StaggeredGridTile.count(
                  crossAxisCellCount: cacc[index],
                  mainAxisCellCount: macc[index],
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProjectDetails(
                          dataProject: dataProject['NAME'][index],
                        ),
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                          dataProject['IMAGE_MAIN'][index],
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          child: FractionallySizedBox(
                            widthFactor: 1,
                            heightFactor: 0.25,
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              color: Colors.black.withOpacity(.5),
                              child: Center(
                                child: Text(
                                  dataProject['PROJECT_NAME'][index],
                                  textAlign: TextAlign.center,
                                  style: AppTextstyles().h1Dark(),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )));
  }
}
