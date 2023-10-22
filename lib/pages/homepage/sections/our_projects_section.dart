import 'package:gspdt/constants/constants.dart';

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
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: isDesktop
                  ? desktopTitleAndDesc(
                      screenWidth: screenWidth, isDesktop: true)
                  : desktopTitleAndDesc(
                      screenWidth: screenWidth, isDesktop: false),
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
                    child: ProjectCard(index),
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
    {required double screenWidth, required bool isDesktop}) {
  return isDesktop
      ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TITLE
                SelectableText(
                  AppStrings.PROJECTS,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                // DESCRIPTION
                SizedBox(
                  width: screenWidth - 350,
                  child: SelectableText(
                    AppStrings.PROJECTS_OVERVIEW_DESCRIPTION,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text('See More'))
          ],
        )
      : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TITLE
            SelectableText(
              AppStrings.PROJECTS,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            // DESCRIPTION
            SizedBox(
              width: screenWidth,
              child: SelectableText(
                AppStrings.OUR_SERVICE_DESCRIPTION,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(onPressed: () {}, child: Text('See More'))
          ],
        );
}

class ProjectCard extends StatelessWidget {
  final int index;

  ProjectCard(this.index);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 1024;
    bool isTablet = MediaQuery.of(context).size.width > 768 &&
        MediaQuery.of(context).size.width <= 1024;

    // Replace this with your project card design
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 16.0,
          ),
          // Your project card content here
          Icon(Icons.image,
              size: isDesktop
                  ? 48.0
                  : isTablet
                      ? 36.0
                      : 24.0),
          SizedBox(
            height: 8.0,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: Text(
                  'Project Title $index',
                  style: TextStyle(
                    fontSize: isDesktop
                        ? 18.0
                        : isTablet
                            ? 16.0
                            : 14.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 8.0, bottom: 16.0),
                child: Text(
                  'Project Description $index',
                  style: TextStyle(
                    fontSize: isDesktop
                        ? 14.0
                        : isTablet
                            ? 12.0
                            : 10.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}