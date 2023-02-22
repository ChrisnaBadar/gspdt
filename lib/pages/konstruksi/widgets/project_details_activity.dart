import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget projectDetailsActivity(BuildContext context) {
  final boxWidth = MediaQuery.of(context).size.width;
  final boxHeight = 300.0;
  return Card(
    child: Column(
      children: [
        Text(
          'Kegiatan Pekerjaan Hari Ini',
          style: GoogleFonts.lato(
              textStyle: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        SizedBox(
            width: boxWidth * .4,
            height: boxHeight,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => Container(
                  color: index % 2 == 0 ? Colors.blueGrey[100] : null,
                  child: Text('kegiatan #1')),
            )),
      ],
    ),
  );
}
