import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/pages/blogs/sections/blog_list_section.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double headerHeight = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: headerHeight,
                ),
                //Banner
                BannerSection(),

                //Service Section
                OurServiceSection(),

                //Projects Section
                OurProjectsSection(),

                //Articles Section
                BlogListSection(),

                //Footer Section
                Footer()
              ],
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomHeader(),
          ),
        ],
      ),
    );
  }
}
