import 'package:gspdt/constants/constants.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

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
                'assets/images/logo_dark.png',
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
                  text: 'Home',
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const Homepage(),
                      ),
                    );
                  },
                ),
                MenuItem(
                  text: 'Projects',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProjectsListPage(),
                      ),
                    );
                  },
                ),
                MenuItem(
                  text: 'About Us',
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => AboutUsPage(),
                    //   ),
                    // );
                  },
                ),
                MenuItem(
                    text: 'Blog',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BlogListPage(),
                        ),
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
