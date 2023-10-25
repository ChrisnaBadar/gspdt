import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/pages/projects/projects_details.dart';

class OurProjectsSection extends StatelessWidget {
  const OurProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isDesktop = screenWidth > 1024;
    bool isTablet = screenWidth > 768 && screenWidth <= 1024;

    return Container(
      color: Colors.blue, // Change this to your desired color
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: isDesktop
                  ? desktopTitleAndDesc(
                      screenWidth: screenWidth,
                      isDesktop: true,
                      context: context)
                  : desktopTitleAndDesc(
                      screenWidth: screenWidth,
                      isDesktop: false,
                      context: context),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: StaggeredGrid.count(
                crossAxisCount: isDesktop
                    ? 4
                    : isTablet
                        ? 2
                        : 1,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: List.generate(
                  isDesktop
                      ? 8
                      : isTablet
                          ? 6
                          : 4,
                  (index) => StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProjectDetails(
                              dataProject:
                                  DataProjects.myProjectsList['NAME']![index]),
                        ),
                      ),
                      child: ProjectCard(
                        dataProject:
                            DataProjects.myProjectsList['NAME']![index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget desktopTitleAndDesc(
    {required double screenWidth,
    required bool isDesktop,
    required BuildContext context}) {
  return isDesktop
      ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TITLE
                const SelectableText(
                  AppStrings.PROJECTS,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                // DESCRIPTION
                SizedBox(
                  width: screenWidth - 350,
                  child: const SelectableText(
                    AppStrings.PROJECTS_OVERVIEW_DESCRIPTION,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProjectsListPage(),
                      ),
                    ),
                child: const Text('See More'))
          ],
        )
      : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TITLE
            const SelectableText(
              AppStrings.PROJECTS,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            // DESCRIPTION
            SizedBox(
              width: screenWidth,
              child: const SelectableText(
                AppStrings.OUR_SERVICE_DESCRIPTION,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('See More'))
          ],
        );
}

class ProjectCard extends StatelessWidget {
  final Map<String, dynamic> dataProject;

  const ProjectCard({super.key, required this.dataProject});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 1024;
    bool isTablet = MediaQuery.of(context).size.width > 768 &&
        MediaQuery.of(context).size.width <= 1024;

    // Replace this with your project card design
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(
          height: 16.0,
        ),
        // Your project card content here
        Image.asset(
          dataProject['IMAGE_MAIN'],
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Text(
                dataProject['PROJECT_NAME'],
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextstyles(
                        font: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        darkTextColor: Colors.white)
                    .customText(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 8.0, bottom: 16.0),
              child: Text(
                dataProject['HIGHLIGHT'],
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextstyles(
                        font: 'Roboto',
                        fontSize: 14,
                        darkTextColor: Colors.white)
                    .customText(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
