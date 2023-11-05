import 'package:gspdt/constants/constants.dart';

class Banner2 extends StatefulWidget {
  final double parentWidth;
  const Banner2({super.key, required this.parentWidth});

  @override
  State<Banner2> createState() => _Banner2State();
}

class _Banner2State extends State<Banner2> {
  bool en = false;
  @override
  Widget build(BuildContext context) {
    return widget.parentWidth >= AppSizes.PHONE_SIZE
        ? _desktopBanner(parentWidth: widget.parentWidth, en: en)
        : _phoneBanner(parentWidth: widget.parentWidth, en: en);
  }
}

Widget _desktopBanner({required double parentWidth, required bool en}) {
  return FullScreenRow(
    child: Stack(
      children: [
        Row(
          children: [
            Expanded(child: Container()),
            Expanded(
                child: Image.asset(AppImages.CLEANING_SERVICE_TOOLS,
                    fit: BoxFit.cover, height: double.infinity)),
          ],
        ),
        Image.asset(AppImages.BANNER_8),
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.LOGO_HEADER,
                    width: parentWidth * .2,
                    scale: 4,
                  ),
                  Text(
                    AppStrings(en: en).OUTSOURCING_FIELD,
                    textAlign: TextAlign.center,
                    style: AppTextstyles(
                            fontSize: parentWidth * .02,
                            fontWeight: FontWeight.bold,
                            darkThemeTextColor: AppThemes.primaryTextDark)
                        .customTextDarkTheme(),
                  ),
                  Text(AppStrings(en: en).OUTSOURCING_DESCRIPTION,
                      textAlign: TextAlign.center,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextstyles(
                              fontSize: parentWidth * .013,
                              darkThemeTextColor: AppThemes.primaryTextDark)
                          .customTextDarkTheme()),
                ],
              ),
            )),
            Expanded(child: Container()),
          ],
        )
      ],
    ),
  );
}

Widget _phoneBanner({required double parentWidth, required bool en}) {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Image.asset(
        AppImages.CLEANING_SERVICE_TOOLS,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      Image.asset(
        AppImages.PORTRAIT_BANNER_3,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      Column(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.LOGO_HEADER,
                width: parentWidth * .2,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                AppStrings(en: en).OUTSOURCING_FIELD,
                textAlign: TextAlign.center,
                style: AppTextstyles(
                        fontSize: parentWidth * .05,
                        fontWeight: FontWeight.bold,
                        darkThemeTextColor: AppThemes.primaryTextDark)
                    .customTextLightTheme(),
              )
            ],
          )),
          Expanded(child: Container()),
          Expanded(child: Container())
        ],
      )
    ],
  );
}
