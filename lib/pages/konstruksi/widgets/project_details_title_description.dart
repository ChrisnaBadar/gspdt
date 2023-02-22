import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget projectDetailsTitleDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Proyek Pembangunan Gedung Pendidikan',
        style: GoogleFonts.montserrat(
            textStyle:
                const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
      ),
      const SizedBox(
        height: 16.0,
      ),
      Row(
        children: const [
          Icon(
            FontAwesomeIcons.circleExclamation,
            color: Colors.green,
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
              'Proyek pembangunan gedung Sekolah Tinggi Agama Islam Daarut Tauhiid Bandung'),
        ],
      ),
      const SizedBox(
        height: 32.0,
      ),
      const SizedBox()
    ],
  );
}
