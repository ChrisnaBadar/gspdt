import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/strings.dart';

class DesktopBodyDiv3 extends StatelessWidget {
  const DesktopBodyDiv3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: 360.0,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 32.0, horizontal: 180.0),
          child: Text(
            Strings.hadith1,
            style: GoogleFonts.paytoneOne(
                textStyle: const TextStyle(
                    fontSize: 20.0, fontStyle: FontStyle.italic)),
          ),
        ));
  }
}
