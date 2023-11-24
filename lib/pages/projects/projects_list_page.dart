import 'package:dartz/dartz.dart' as dartz;
import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/project_model.dart';
import 'package:gspdt/pages/projects/projects_details.dart';
import 'package:gspdt/services/db_services.dart';

class ProjectsListPage extends StatefulWidget {
  const ProjectsListPage({super.key});

  @override
  State<ProjectsListPage> createState() => _ProjectsListPageState();
}

class _ProjectsListPageState extends State<ProjectsListPage> {
  Future<dartz.Either<String, ListProjectModel>>? listProjectModel;
  bool en = false;

  @override
  void initState() {
    // TODO: implement initState
    listProjectModel = DbServices().fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppbar(parentWidth: screenWidth),
      drawer: const Drawer(
        child: CustomMobileHeader(),
      ),
      body: FutureBuilder(
          future: listProjectModel,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final result = snapshot.data!.fold((l) => 'Data Not Exist',
                  (r) => ListProjectModel(data: r.data));
              final response =
                  result != String ? result as ListProjectModel : null;
              print(
                  'response: ${response!.data![0].attributes!.mainImage!.data!.attributes!.url}');
              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenWidth <= AppSizes.TABLET_SIZE ? 0 : 100,
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
                                    text: AppStrings(en: en).PORTOFOLIO_HEADER,
                                    style: AppTextstyles(
                                            currentResolution: screenWidth)
                                        .h1Light()),
                                TextSpan(
                                    text:
                                        AppStrings(en: en).PORTOFOLIO_SUBHEADER,
                                    style:
                                        AppTextstyles(myOpacity: .5).h1Light()),
                                TextSpan(
                                    text:
                                        '${AppStrings(en: en).COMPANY_ABBREV} ',
                                    style: AppTextstyles().h1Light()),
                              ]),
                            ),
                          ),
                        ),
                        //DESCRIPTION
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 64.0, vertical: 16),
                          child: Text(
                            AppStrings(en: en).PORTOFOLIO_DESCRIPTION,
                            style: AppTextstyles().paragraphLight(),
                          ),
                        ),
                        // TestData(response: response!),
                        //PROJECT LIST 3 TILE SECTION
                        ProjectsHighlight(
                          response: response,
                          parentWidth: screenWidth,
                        ),
                        const SizedBox(height: 8.0),
                        const Divider(),
                        const SizedBox(height: 8.0),
                        ProjectsListPortfolio(
                          response: response,
                          parentWidth: screenWidth,
                        ),
                        Footer()
                      ],
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
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

class ProjectsHighlight extends StatelessWidget {
  final ListProjectModel? response;
  final double parentWidth;
  const ProjectsHighlight(
      {super.key, required this.response, required this.parentWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16.0,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(text: 'PROJECTS ', style: AppTextstyles().h1Light()),
          TextSpan(
              text: 'HIGHLIGHT', style: AppTextstyles(myOpacity: .5).h1Light())
        ])),
        const SizedBox(
          height: 16.0,
        ),
        StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          children: List.generate(
              3,
              (index) => StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProjectDetails(
                          project: response!.data![index],
                        ),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Column(
                            children: [
                              Expanded(
                                child: Image.network(
                                  '${AppStrings.API_ADDRESS}${response!.data![index].attributes!.mainImagePortrait!.data!.attributes!.url!}',
                                  width: (parentWidth / 3) - 8,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            color: Colors.black.withOpacity(.5),
                            child: ListTile(
                              title: Text(
                                response!.data![index].attributes!.name!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextstyles(
                                        font: 'Poppins',
                                        fontSize: parentWidth * .0135,
                                        fontWeight: FontWeight.bold)
                                    .customTextLightTheme(),
                              ),
                              subtitle: Text(
                                response!.data![index].attributes!.highlight!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextstyles(
                                        font: 'Poppins',
                                        fontSize: parentWidth * .01,
                                        fontWeight: FontWeight.normal)
                                    .customTextLightTheme(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))),
        ),
      ],
    );
  }
}

class TestData extends StatelessWidget {
  final ListProjectModel response;
  const TestData({super.key, required this.response});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: response.data!.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(response.data![index].attributes!.name!),
        );
      },
    );
  }
}

class ProjectsListPortfolio extends StatelessWidget {
  final ListProjectModel response;
  final double parentWidth;
  const ProjectsListPortfolio(
      {super.key, required this.response, required this.parentWidth});

  @override
  Widget build(BuildContext context) {
    List cacc =
        Controllers().generateCaccList(response.data!.length, [2, 2, 1, 1, 4]);
    List macc =
        Controllers().generateMaccList(response.data!.length, [2, 1, 1, 1, 2]);
    return Column(
      children: [
        const SizedBox(
          height: 16.0,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(text: 'Our ', style: AppTextstyles(myOpacity: .5).h1Light()),
          TextSpan(text: 'Projects ', style: AppTextstyles().h1Light()),
          TextSpan(text: 'List', style: AppTextstyles(myOpacity: .5).h1Light())
        ])),
        const SizedBox(
          height: 16.0,
        ),
        StaggeredGrid.count(
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
                              project: response.data![index],
                            ),
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.network(
                              '${AppStrings.API_ADDRESS}${response.data![index].attributes!.mainImage!.data!.attributes!.url!}',
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
                                      response.data![index].attributes!.name!,
                                      textAlign: TextAlign.center,
                                      style: AppTextstyles(
                                              font: 'Poppins',
                                              fontSize: parentWidth * 0.015,
                                              fontWeight: FontWeight.bold)
                                          .customTextLightTheme(),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))),
      ],
    );
  }
}
