import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget projectDetailsActivity(BuildContext context) {
  final boxWidth = MediaQuery.of(context).size.width;
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Kegiatan Pekerjaan Hari Ini',
            style: GoogleFonts.lato(
                textStyle: const TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text('No.'),
              SizedBox(
                width: 16.0,
              ),
              Text('Aktivitas Kegiatan'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) => Container(
              color: index % 2 == 0 ? Colors.blueGrey[100] : null,
              child: Row(
                children: [
                  Text((index + 1).toString().padLeft(2, '0')),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Text('Kegiatan ${index + 1}'),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
