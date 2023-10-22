import 'dart:ui';

import 'package:gspdt/constants/constants.dart';

class OurBlogSection extends StatefulWidget {
  const OurBlogSection({super.key});

  @override
  State<OurBlogSection> createState() => _OurBlogSectionState();
}

class _OurBlogSectionState extends State<OurBlogSection> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isDesktop = screenWidth > 1024;
    bool isTablet = screenWidth > 768 && screenWidth <= 1024;

    List myColor = [Colors.amber, Colors.green, Colors.blue, Colors.red];
    List cacc = [2, 1, 1, 2];
    List macc = [2, 1, 1, 1];

    return Column(
      children: [
        SizedBox(
          height: 16.0,
        ),
        SelectableText(
          'Article-article',
          style: AppTextstyles().h1Light(),
        ),
        SizedBox(
          height: 16.0,
        ),
        StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: List.generate(
              4,
              (index) => StaggeredGridTile.count(
                  crossAxisCellCount: cacc[index],
                  mainAxisCellCount: macc[index],
                  child: MyImageContainer(
                    blogImage: DataBlog.myArticlesList['IMAGE_MAIN'][index],
                    blogTitle: DataBlog.myArticlesList['TITLE'][index],
                  ))),
        )
      ],
    );
  }
}

class MyImageContainer extends StatefulWidget {
  final String blogImage;
  final String blogTitle;
  const MyImageContainer(
      {super.key, required this.blogImage, required this.blogTitle});

  @override
  State<MyImageContainer> createState() => _MyImageContainerState();
}

class _MyImageContainerState extends State<MyImageContainer> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              widget.blogImage,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Visibility(
                visible: _isHovering,
                child: FractionallySizedBox(
                  alignment: Alignment.bottomCenter,
                  widthFactor: 1.0,
                  heightFactor: .5,
                  child: Container(
                    color: Colors.black.withOpacity(.5),
                    child: Text(
                      widget.blogTitle,
                      style: AppTextstyles().h2Dark(),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
