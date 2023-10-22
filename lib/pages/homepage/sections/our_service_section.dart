import 'package:gspdt/constants/constants.dart';

class OurServiceSection extends StatefulWidget {
  const OurServiceSection({super.key});

  @override
  State<OurServiceSection> createState() => _OurServiceSectionState();
}

class _OurServiceSectionState extends State<OurServiceSection> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First Row - Title Text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SelectableText('Bidang Pekerjaan',
                      style: AppTextstyles().h1Light()),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.8, // 80% of screen width
                    child: SelectableText(
                      AppStrings.OUR_SERVICE_DESCRIPTION,
                      style: AppTextstyles().paragraphLight(),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0), // Space between rows

            // Third Row - Boxes
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(
                      topLineColor: AppThemes.primaryColorLight,
                      icon: AppImages.CONSTRUCTION_ICON,
                      titleText: 'Pelaksana Konstruksi',
                      desText:
                          'Progress yang Transparan: Bersama kami, Anda akan selalu tahu di mana proyek Anda berada. Kami memberikan informasi real-time untuk memastikan Anda tetap terinformasi.'),
                  CustomBox(
                      topLineColor: AppThemes.primaryAccentLight,
                      icon: AppImages.CLEANING_ICON,
                      titleText: 'Cleaning Service',
                      desText:
                          'Progress yang Transparan: Bersama kami, Anda akan selalu tahu di mana proyek Anda berada. Kami memberikan informasi real-time untuk memastikan Anda tetap terinformasi.'),
                  CustomBox(
                      topLineColor: AppThemes.secondaryColorLight,
                      icon: AppImages.DESIGN_ICON,
                      titleText: 'Perencana Gedung',
                      desText:
                          'Progress yang Transparan: Bersama kami, Anda akan selalu tahu di mana proyek Anda berada. Kami memberikan informasi real-time untuk memastikan Anda tetap terinformasi.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final Color topLineColor;
  final String icon;
  final String titleText;
  final String desText;
  const CustomBox(
      {super.key,
      required this.topLineColor,
      required this.icon,
      required this.titleText,
      required this.desText});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = (screenWidth - 100.0) /
        3.0; // Divide the screen width by 3 with 10 pixels gap between boxes
    double boxHeight = boxWidth / 16 * 9; // 16:9 aspect ratio

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 0,
          child: Container(
            width: boxWidth,
            height: 5,
            color: topLineColor,
          ),
        ),
        Container(
          width: boxWidth,
          margin: const EdgeInsets.all(
              5.0), // Add 5 pixels margin to create a 10-pixel gap
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 16.0,
              ),
              //Title
              SelectableText(
                titleText,
                style: AppTextstyles().h1Light(),
              ),
              SizedBox(
                height: 16.0,
              ),

              Image.asset(
                icon,
                scale: 2,
              ),

              //Description1
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SelectableText(
                      desText,
                      style: AppTextstyles().paragraphLight(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
