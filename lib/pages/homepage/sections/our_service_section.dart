import 'package:gspdt/constants/constants.dart';

class OurServiceSection extends StatefulWidget {
  const OurServiceSection({super.key});

  @override
  State<OurServiceSection> createState() => _OurServiceSectionState();
}

class _OurServiceSectionState extends State<OurServiceSection> {
  bool en = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: screenWidth <= AppSizes.TABLET_SIZE
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First Row - Title Text
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
              child: SelectableText('Bidang Pekerjaan',
                  style: AppTextstyles().h1Light()),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: screenWidth <= AppSizes.TABLET_SIZE
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                children: [
                  Container(
                    width: 75,
                    height: 5,
                    color: AppThemes.primaryColorLight,
                  ),
                  Container(
                    width: 75,
                    height: 5,
                    color: AppThemes.primaryAccentLight,
                  ),
                  Container(
                    width: 75,
                    height: 5,
                    color: AppThemes.secondaryColorLight,
                  ),
                ],
              ),
            ),

            // Second Row - Description Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: screenWidth * 0.8, // 80% of screen width
                child: SelectableText(
                  AppStrings(en: en).OUR_SERVICE_DESCRIPTION,
                  style: AppTextstyles().paragraphLight(),
                  textAlign: screenWidth <= AppSizes.TABLET_SIZE
                      ? TextAlign.center
                      : TextAlign.left,
                ),
              ),
            ),
            const SizedBox(height: 16.0), // Space between rows

            ServiceCustomBox(
              en: en,
              parentWidth: screenWidth,
            )
          ],
        ),
      ),
    );
  }
}

class ServiceCustomBox extends StatelessWidget {
  final bool en;
  final double parentWidth;
  const ServiceCustomBox(
      {super.key, required this.en, required this.parentWidth});

  @override
  Widget build(BuildContext context) {
    List stringsTitle = [
      AppStrings(en: en).CONSTRUCTION_FIELD,
      AppStrings(en: en).OUTSOURCING_FIELD,
      AppStrings(en: en).PLANNING_FIELD
    ];
    List stringsDescription = [
      AppStrings(en: en).CONSTRUCTION_BENEFITS_1,
      AppStrings(en: en).OUTSOURCING_BENEFITS_1,
      AppStrings(en: en).PLANNING_BENEFITS_1
    ];
    List colorTheme = [
      AppThemes.primaryColorLight,
      AppThemes.primaryAccentDark,
      AppThemes.primaryColorDark,
    ];
    List iconServices = [
      AppImages.CONSTRUCTION_ICON,
      AppImages.CLEANING_ICON,
      AppImages.DESIGN_ICON
    ];
    return StaggeredGrid.count(
      crossAxisCount: 3,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: List.generate(
          3,
          (index) => StaggeredGridTile.count(
              crossAxisCellCount: parentWidth <= AppSizes.TABLET_SIZE ? 3 : 1,
              mainAxisCellCount: parentWidth <= AppSizes.PHONE_SIZE
                  ? 2.5
                  : parentWidth <= AppSizes.TABLET_SIZE
                      ? 1.2
                      : 1,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        parentWidth <= AppSizes.TABLET_SIZE ? 100.0 : 8.0,
                    vertical: 8.0),
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Container(
                              color: colorTheme[index],
                              height: 5,
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              stringsTitle[index],
                              textAlign: TextAlign.center,
                              style: AppTextstyles().h2Light(),
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        iconServices[index],
                        scale: 2,
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            stringsDescription[index],
                            textAlign: TextAlign.center,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextstyles().paragraphLight(),
                          ),
                        )),
                  ],
                ),
              ))),
    );
  }
}
