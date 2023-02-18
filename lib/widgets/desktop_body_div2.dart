import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gspdt/controllers/desktop_home_controller.dart';

import '../constants/strings.dart';

class DesktopBodyDiv2 extends StatefulWidget {
  const DesktopBodyDiv2({super.key});

  @override
  State<DesktopBodyDiv2> createState() => _DesktopBodyDiv2State();
}

class _DesktopBodyDiv2State extends State<DesktopBodyDiv2> {
  final _homeController = Get.put(DesktopHomeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      width: MediaQuery.of(context).size.width,
      height: 720.0,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white60,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.companyResumeTitle,
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Text.rich(
                      const TextSpan(children: [
                        TextSpan(text: Strings.companyResume1),
                        TextSpan(text: '\n\n'),
                        TextSpan(text: Strings.companyResume2),
                        TextSpan(text: '\n\n'),
                        TextSpan(text: Strings.companyResume3)
                      ]),
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(height: 1.5)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white60, width: 5.0),
                  color: Colors.white),
              child: InkWell(
                onTap: () {},
                onHover: (value) => _homeController.isOnHover[0] = value,
                child: Stack(alignment: Alignment.center, children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.construction),
                      Text(
                        'Construction',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 17.5, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  Obx(
                    () => Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _homeController.isOnHover[0],
                      child: Container(
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white60, width: 5.0),
                  color: Colors.white),
              child: InkWell(
                onTap: () {},
                onHover: (value) => _homeController.isOnHover[1] = value,
                child: Stack(alignment: Alignment.center, children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.construction),
                      Text(
                        'Outsourcing',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 17.5, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  Obx(
                    () => Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _homeController.isOnHover[1],
                      child: Container(
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white60, width: 5.0),
                  color: Colors.white),
              child: InkWell(
                onTap: () {},
                onHover: (value) => _homeController.isOnHover[2] = value,
                child: Stack(alignment: Alignment.center, children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.construction),
                      Text(
                        'Consultant',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 17.5, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  Obx(
                    () => Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _homeController.isOnHover[2],
                      child: Container(
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
