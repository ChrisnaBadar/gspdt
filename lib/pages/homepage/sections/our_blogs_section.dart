import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/article_model.dart';
import 'package:dartz/dartz.dart' as dartz;

class OurBlogSection extends StatefulWidget {
  const OurBlogSection({super.key});

  @override
  State<OurBlogSection> createState() => _OurBlogSectionState();
}

class _OurBlogSectionState extends State<OurBlogSection> {
  Future<dartz.Either<String, ListArticleModel>>? listArticleModel;

  @override
  void initState() {
    // TODO: implement initState
    listArticleModel = DbServices().fetchArticleData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List cacc = [2, 1, 1, 2];
    List macc = [2, 1, 1, 1];

    return FutureBuilder(
        future: listArticleModel,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            final result = snapshot.data!.fold(
                (l) => 'Data Not Exist', (r) => ListArticleModel(data: r.data));
            final response =
                result != String ? result as ListArticleModel : null;
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
                            blogImage: response!.data![index].attributes!
                                .articleMainImage!.data!.attributes!.url!,
                            blogTitle:
                                response.data![index].attributes!.articleTitle!,
                          ))),
                )
              ],
            );
          } else {
            return const Center(
              child: Text("Data Gagal Diambil"),
            );
          }
        });
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
            Image.network(
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
