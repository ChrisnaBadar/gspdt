import 'package:gspdt/constants/constants.dart';

class CustomHeader extends StatefulWidget {
  const CustomHeader({super.key});

  @override
  State<CustomHeader> createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  bool en = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: <Widget>[
          // Left Column (Logo)
          Expanded(
            flex: 1,
            child: Center(
              child: Image.asset(
                AppImages.LOGO_DARK,
                scale: 2,
              ),
            ),
          ),
          // Right Column (Menu Buttons)
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MenuItem(
                  text: AppStrings(en: en).HOME,
                  onPressed: () => Navigator.pushNamed(context, '/'),
                ),
                MenuItem(
                  text: AppStrings(en: en).PROJECTS,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProjectsListPage(),
                      ),
                    );
                  },
                ),
                MenuItem(
                  text: AppStrings(en: en).ABOUT_US,
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => AboutUsPage(),
                    //   ),
                    // );
                  },
                ),
                MenuItem(
                    text: AppStrings(en: en).ARTICLES,
                    onPressed: () =>
                        Navigator.pushNamed(context, '/blogListPage'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
