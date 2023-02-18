import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gspdt/constants/strings.dart';
import 'package:gspdt/widgets/desktop_body_div1.dart';
import 'package:gspdt/widgets/desktop_body_div2.dart';
import 'package:gspdt/widgets/desktop_body_div3.dart';
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
        backgroundColor: Colors.blueGrey[900],
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 70),
          child: const DesktopNavigation(),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: const [
            //div
            DesktopBodyDiv1(),

            //div 2
            DesktopBodyDiv2(),

            //div 3 Quotes
            DesktopBodyDiv3(),

            //Footer
            DesktopFooter()
          ],
        )));
  }
}
