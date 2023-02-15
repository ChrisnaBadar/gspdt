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
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 240, 240, 240),
                    Color.fromARGB(255, 91, 91, 91),
                  ],
                  begin: FractionalOffset(0.5, 0.0),
                  end: FractionalOffset(0.0, 0.5),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp)),
          child: SingleChildScrollView(
              child: Column(
            children: [
              //div 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 720.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 720.0,
                    ),
                  ),
                ],
              ),
            ],
          )),
        ));
  }
}
