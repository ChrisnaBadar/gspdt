import 'package:gspdt/constants/constants.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  List<Widget> _bannerSlides = [];
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // Start the timer to automatically slide every 5 seconds
    _timer = Timer.periodic(const Duration(seconds: 15), (timer) {
      if (_currentPage < _bannerSlides.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    // Dispose of the timer when the widget is removed from the tree
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = screenWidth / 16 * 9; // 16:9 aspect ratio
    double phoneScreenHeight = screenWidth / 9 * 16;
    _bannerSlides = [
      Banner1(
        parentWidth: screenWidth,
      ),
      Banner2(
        parentWidth: screenWidth,
      ),
      // Image.asset(AppImages.BANNER_2),
      // Image.asset(AppImages.BANNER_3),
      // Image.asset(AppImages.BANNER_4),
    ];

    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: screenWidth >= AppSizes.PHONE_SIZE
                  ? screenHeight
                  : phoneScreenHeight, // Automatic height based on 16:9 aspect ratio
              child: PageView.builder(
                controller: _pageController,
                itemCount: _bannerSlides.length,
                itemBuilder: (context, index) {
                  return _bannerSlides[index];
                },
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.arrow_left),
                  onPressed: () {
                    if (_currentPage > 0) {
                      _currentPage--;
                      _pageController.animateToPage(
                        _currentPage,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_right),
                  onPressed: () {
                    if (_currentPage < _bannerSlides.length - 1) {
                      _currentPage++;
                      _pageController.animateToPage(
                        _currentPage,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
