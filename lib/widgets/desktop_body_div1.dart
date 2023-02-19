import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopBodyDiv1 extends StatelessWidget {
  const DesktopBodyDiv1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 720.0,
      color: Colors.blueGrey[900],
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            'assets/main-back.svg',
            fit: BoxFit.cover,
          ),
          Text.rich(
              TextSpan(children: [
                const TextSpan(
                    text: 'GLOBAL', style: TextStyle(color: Colors.white)),
                const TextSpan(
                    text: ' SOLUTION ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 111, 176, 229))),
                const TextSpan(
                    text: 'PROVIDER', style: TextStyle(color: Colors.white)),
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
        ],
      ),
    );
  }
}
