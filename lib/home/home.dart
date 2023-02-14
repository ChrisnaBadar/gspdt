import 'package:flutter/material.dart';
import 'package:gspdt/layout/screen_layout.dart';
import 'package:gspdt/widgets/desktop_body.dart';

import '../widgets/mobile_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenLayout(
          mobileBody: const MobileBody(), desktopBody: const DesktopBody()),
    );
  }
}
