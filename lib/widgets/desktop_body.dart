import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gspdt/constants/strings.dart';
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
          children: [
            //div
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 720.0,
              color: Colors.blueGrey[900],
              child: Text.rich(
                  TextSpan(children: [
                    const TextSpan(
                        text: 'GLOBAL', style: TextStyle(color: Colors.white)),
                    const TextSpan(
                        text: ' SOLUTION ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 187, 249))),
                    const TextSpan(
                        text: 'PROVIDER',
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                        text: '\nMelayani Dengan Hati',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 17.5, color: Colors.white))),
                  ]),
                  textAlign: TextAlign.left,
                  style: GoogleFonts.paytoneOne(
                      textStyle: const TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.bold))),
            ),

            //div 2
            Container(
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 32.0),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.construction),
                          Text(
                            'Konstruksi Bangunan',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60, width: 5.0),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.person),
                          Text(
                            'Outsourcing',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60, width: 5.0),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.countertops_outlined),
                          Text(
                            'Building Consultant',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //div 3 Quotes
            Container(
                alignment: Alignment.center,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 360.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 32.0, horizontal: 180.0),
                  child: Text(
                    Strings.hadith1,
                    style: GoogleFonts.paytoneOne(
                        textStyle: const TextStyle(
                            fontSize: 20.0, fontStyle: FontStyle.italic)),
                  ),
                )),

            //Footer
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 540,
              child: Column(),
            )
          ],
        )));
  }
}
