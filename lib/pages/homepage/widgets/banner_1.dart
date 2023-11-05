import 'package:gspdt/constants/constants.dart';

class Banner1 extends StatefulWidget {
  final double parentWidth;
  const Banner1({super.key, required this.parentWidth});

  @override
  State<Banner1> createState() => _Banner1State();
}

class _Banner1State extends State<Banner1> {
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
            Expanded(
                child: Image.asset(AppImages.CONSTRUCTION_SKETCH,
                    fit: BoxFit.cover, height: double.infinity)),
            Expanded(child: Container())
          ],
        ),
        Image.asset(AppImages.BANNER_6),
        Row(
          children: [
            Expanded(child: Container()),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.LOGO_HEADER,
                    width: parentWidth * .2,
                  ),
                  Text(AppStrings(en: en).CONSTRUCTION_FIELD,
                      textAlign: TextAlign.center,
                      style: AppTextstyles(
                              fontSize: parentWidth * .02,
                              fontWeight: FontWeight.bold,
                              darkThemeTextColor: AppThemes.primaryTextDark)
                          .customTextDarkTheme()),
                  Text(AppStrings(en: en).CONSTRUCTION_DESCRIPTION,
                      textAlign: TextAlign.center,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextstyles(
                              fontSize: parentWidth * .013,
                              darkThemeTextColor: AppThemes.primaryTextDark)
                          .customTextDarkTheme()),
                ],
              ),
            ))
          ],
        )
      ],
    ),
  );
}

Widget _phoneBanner({required double parentWidth, required bool en}) {
  return Stack(
    children: [
      Image.asset(
        AppImages.CONSTRUCTION_SKETCH,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      Image.asset(
        AppImages.PORTRAIT_BANNER_1,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      Column(
        children: [
          Expanded(child: Container()),
          Expanded(child: Container()),
          Expanded(
              child: Column(
            children: [
              Image.asset(
                AppImages.LOGO_HEADER,
                width: parentWidth * .2,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                AppStrings(en: en).CONSTRUCTION_FIELD,
                style: AppTextstyles(
                        fontSize: parentWidth * .05,
                        fontWeight: FontWeight.bold,
                        darkThemeTextColor: AppThemes.primaryTextDark)
                    .customTextLightTheme(),
              )
            ],
          ))
        ],
      )
    ],
  );
}
