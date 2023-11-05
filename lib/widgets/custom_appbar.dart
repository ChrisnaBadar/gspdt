import 'package:gspdt/constants/constants.dart';

PreferredSizeWidget customAppbar({required double parentWidth}) {
  return parentWidth <= AppSizes.TABLET_SIZE
      ? AppBar(
          centerTitle: true,
          title: Image.asset(
            AppImages.LOGO_DARK,
            fit: BoxFit.contain,
            height: 50,
          ),
        )
      : PreferredSize(preferredSize: Size.fromHeight(0.0), child: Container());
}
