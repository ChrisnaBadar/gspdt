import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/project_model.dart';

class ProjectDetails extends StatelessWidget {
  final Datum project;
  const ProjectDetails({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    List cacc = Controllers().generateCaccList(
        project.attributes!.imageList!.data!.length, [1, 1, 2, 2, 1, 1]);
    List macc = Controllers().generateMaccList(
        project.attributes!.imageList!.data!.length, [1, 1, 1, 1, 1, 1]);
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppbar(parentWidth: screenWidth),
      drawer: Drawer(child: CustomMobileHeader()),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Row(
                children: [
                  //======================LEFT SIDE===================
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),

                  //==============================BODY================
                  Expanded(
                    flex: Controllers().calculateFlex(screenWidth),
                    child: Column(
                      children: [
                        DetailsHeader(
                          screenWidth: screenWidth,
                          project: project,
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        ProjectInfo(
                          screenWidth: screenWidth,
                          project: project,
                        ),
                        // ProjectDetailsHeader(
                        //     screenWidth: screenWidth, dataProject: dataProject),
                        const SizedBox(
                          height: 16.0,
                        ),
                        LingkupPekerjaan(project: project),
                        const SizedBox(
                          height: 16.0,
                        ),
                        TantanganSolusi(project: project),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Galeri Proyek',
                          style: AppTextstyles().h2Light(),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        StaggeredGrid.count(
                          crossAxisCount: 4,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          children: List.generate(
                              project.attributes!.imageList!.data!.length,
                              (index) => StaggeredGridTile.count(
                                    crossAxisCellCount: cacc[index],
                                    mainAxisCellCount: macc[index],
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1,
                                              color: AppThemes
                                                  .secondaryColorLight)),
                                      child: Image.network(
                                        '${AppStrings.API_ADDRESS}${project.attributes!.imageList!.data![index].attributes!.url!}',
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
            screenWidth <= AppSizes.TABLET_SIZE
                ? Container()
                : const Positioned(
                    top: 0, left: 0, right: 0, child: CustomHeader())
          ],
        ),
      ),
    );
  }
}

class DetailsHeader extends StatelessWidget {
  final double screenWidth;
  final Datum project;
  const DetailsHeader(
      {super.key, required this.screenWidth, required this.project});

  @override
  Widget build(BuildContext context) {
    List cacc = [4, 4];
    List macc = [2, .5];
    List phoneCacc = [4, 4, 4];
    List phoneMacc = [2, 2, 4];
    return Column(
      children: [
        SizedBox(
          height: screenWidth <= AppSizes.TABLET_SIZE ? 0 : 100,
        ),
        Text(
          project.attributes!.name!,
          style: AppTextstyles(
                  font: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold)
              .customTextDarkTheme(),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          project.attributes!.highlight!,
          textAlign: TextAlign.center,
          style: AppTextstyles(
            font: 'Poppins',
            fontSize: 16,
          ).customTextDarkTheme(),
        ),
        const SizedBox(
          height: 16.0,
        ),
        StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: List.generate(
              2,
              (index) => StaggeredGridTile.count(
                  crossAxisCellCount: screenWidth <= AppSizes.PHONE_SIZE
                      ? phoneCacc[index]
                      : cacc[index],
                  mainAxisCellCount: screenWidth <= AppSizes.PHONE_SIZE
                      ? phoneMacc[index]
                      : macc[index],
                  child: index == 0
                      ? Container(
                          decoration: BoxDecoration(border: Border.all()),
                          child: Image.network(
                            '${AppStrings.API_ADDRESS}${project.attributes!.mainImage!.data!.attributes!.url!}',
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(
                          child: Text(
                            project.attributes!.description!,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextstyles().paragraphLight(),
                          ),
                        ))),
        ),
      ],
    );
  }
}

class ProjectInfo extends StatelessWidget {
  final double screenWidth;
  final Datum project;
  const ProjectInfo(
      {super.key, required this.screenWidth, required this.project});

  @override
  Widget build(BuildContext context) {
    List cacc = [1, 1, 1, 1];
    List macc = [.5, .5, .5, .5];
    List tabletCacc = [1, 1, 1, 1];
    List tabletMacc = [.8, .8, .8, .8];
    List phoneCacc = [2, 2, 2, 2];
    List phoneMacc = [1, 1, 1, 1];
    List projectHeaderInfoStrings = [
      'Lokasi Proyek: ',
      'Tahun Proyek: ',
      'Pemilik Proyek: ',
      'Kontak Info: '
    ];
    List projectDataInfoStrings = [
      project.attributes!.location!,
      project.attributes!.year!,
      project.attributes!.owner!,
      project.attributes!.contact!,
    ];
    return Column(
      children: [
        Text(
          'Info Proyek',
          style: AppTextstyles(
                  font: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold)
              .customTextDarkTheme(),
        ),
        const SizedBox(
          height: 8.0,
        ),
        StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: List.generate(
              4,
              (index) => StaggeredGridTile.count(
                  crossAxisCellCount: screenWidth <= AppSizes.PHONE_SIZE
                      ? phoneCacc[index]
                      : screenWidth <= AppSizes.TABLET_SIZE
                          ? tabletCacc[index]
                          : cacc[index],
                  mainAxisCellCount: screenWidth <= AppSizes.PHONE_SIZE
                      ? phoneMacc[index]
                      : screenWidth <= AppSizes.TABLET_SIZE
                          ? tabletMacc[index]
                          : macc[index],
                  child: Container(
                    child: ListTile(
                      title: Text(
                        projectHeaderInfoStrings[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextstyles(
                                font: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold)
                            .customTextDarkTheme(),
                      ),
                      subtitle: Text(
                        projectDataInfoStrings[index],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextstyles().paragraphLight(),
                      ),
                    ),
                  ))),
        ),
      ],
    );
  }
}

class LingkupPekerjaan extends StatelessWidget {
  final Datum project;
  const LingkupPekerjaan({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          project.attributes!.listOpt2!.listTitle!.name,
          style: AppTextstyles().h2Light(),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          project.attributes!.listOpt2!.listDescription!,
          style: AppTextstyles().subheadingLight(),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            project.attributes!.listOpt2!.list!.length,
            (index) => Text.rich(TextSpan(children: [
              TextSpan(
                  text: '${index + 1}. ' +
                      project.attributes!.listOpt2!.list![index].poin!
                          .split(':')[0] +
                      ': ',
                  style:
                      AppTextstyles(fontWeight: FontWeight.bold, fontSize: 18)
                          .customTextDarkTheme()),
              TextSpan(
                  text: project.attributes!.listOpt2!.list![index].poin!
                      .split(':')[1],
                  style: AppTextstyles().paragraphLight()),
              const TextSpan(text: '\n')
            ])),
          ),
        ),
      ],
    );
  }
}

class TantanganSolusi extends StatelessWidget {
  final Datum project;
  const TantanganSolusi({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          project.attributes!.listOpt1!.listTitle!.name,
          style: AppTextstyles().h2Light(),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          project.attributes!.listOpt1!.listDescription!,
          style: AppTextstyles().subheadingLight(),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            project.attributes!.listOpt1!.list!.length,
            (index) => Text.rich(TextSpan(children: [
              TextSpan(
                  text: '${index + 1}. ' +
                      project.attributes!.listOpt1!.list![index].poin!
                          .split(':')[0] +
                      ': ',
                  style:
                      AppTextstyles(fontWeight: FontWeight.bold, fontSize: 18)
                          .customTextDarkTheme()),
              TextSpan(
                  text: project.attributes!.listOpt1!.list![index].poin!
                      .split(':')[1],
                  style: AppTextstyles().paragraphLight()),
              const TextSpan(text: '\n')
            ])),
          ),
        ),
      ],
    );
  }
}
