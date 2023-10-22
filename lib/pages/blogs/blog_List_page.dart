import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/pages/blogs/sections/blog_list_section.dart';
import 'package:gspdt/pages/blogs/sections/blog_page_banner.dart';

class BlogListPage extends StatelessWidget {
  const BlogListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                //Banner
                BlogPageBanner(),
                //blog list
                BlogListSection(),
                Footer()
              ],
            ),
          ),
          Positioned(
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
