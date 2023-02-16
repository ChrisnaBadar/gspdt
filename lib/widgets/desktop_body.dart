import 'package:flutter/material.dart';
import 'package:gspdt/widgets/desktop_footer.dart';
import 'package:gspdt/widgets/desktop_navigation.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 70),
          child: const DesktopNavigation(),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            //div
            Container(
              child: Image.asset(
                'assets/01.jpg',
                fit: BoxFit.cover,
              ),
            )
          ],
        )));
  }
}
