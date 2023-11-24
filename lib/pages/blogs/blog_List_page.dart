import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/pages/blogs/sections/blog_list_section.dart';
import 'package:gspdt/pages/blogs/sections/blog_page_banner.dart';

class BlogListPage extends StatelessWidget {
  const BlogListPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppbar(parentWidth: screenWidth),
      drawer: const Drawer(child: CustomMobileHeader()),
      body: Stack(
        children: [
          const SingleChildScrollView(
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
          screenWidth <= AppSizes.TABLET_SIZE
              ? Container()
              : const Positioned(
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
