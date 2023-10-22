import 'package:gspdt/constants/constants.dart';

class PortraitArticleList extends StatelessWidget {
  const PortraitArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(
                width: 200,
                height: 500,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(DataBlog.myArticlesList['IMAGE_MAIN'][0]),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
