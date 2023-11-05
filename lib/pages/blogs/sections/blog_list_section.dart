import 'package:gspdt/constants/constants.dart';

class BlogListSection extends StatelessWidget {
  const BlogListSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = (screenWidth / 16) * 9;
    List<int> randomNumbers = BlogController().generateUniqueRandomNumbers(
        screenWidth <= AppSizes.PHONE_SIZE
            ? 1
            : screenWidth <= AppSizes.TABLET_SIZE
                ? 2
                : screenWidth <= AppSizes.LARGE_SIZE
                    ? 3
                    : 4,
        0,
        DataBlog.myArticlesList['NAME'].length - 1);
    return Column(
      children: [
        SizedBox(
          height: 32.0,
        ),
        Text(
          'Artikel-Artikel',
          style: AppTextstyles().h2Light(),
        ),
        SizedBox(
          height: 16.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Selamat datang di halaman utama kami! Di sini, Anda akan menemukan beragam artikel informatif tentang konstruksi, bangunan, dan standar kebersihan yang pasti akan bermanfaat bagi Anda. Jelajahi pengetahuan terkini kami untuk mendukung proyek-proyek Anda.',
            textAlign: TextAlign.center,
            style: AppTextstyles().paragraphLight(),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          children: List.generate(
              randomNumbers.length,
              (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ArticleDetailsPage(
                              dataBlog: DataBlog.myArticlesList['NAME']
                                  [randomNumbers[index]],
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                                DataBlog.myArticlesList['IMAGE_MAIN_PORTRAIT']
                                    [randomNumbers[index]]),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              top: MediaQuery.of(context).size.height /
                                  1.5, // Half height
                              child: Container(
                                color: Colors.black.withOpacity(0.5),
                                alignment: Alignment.center,
                                child: Text(
                                  DataBlog.myArticlesList['TITLE']
                                      [randomNumbers[index]],
                                  textAlign: TextAlign.center,
                                  style: AppTextstyles().h2Dark(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
        ),
      ],
    );
  }
}
