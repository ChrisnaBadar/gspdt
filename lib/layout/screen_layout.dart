import 'package:flutter/material.dart';
import 'package:gspdt/constants/dimensions.dart';

class ScreenLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ScreenLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < maxWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
