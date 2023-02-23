import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget projectDetailsWorkers(BuildContext context) {
  final boxWidth = MediaQuery.of(context).size.width * .4;
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: SizedBox(
      width: boxWidth,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            //Main Workers
            _mainWorkers(myWidth: boxWidth, pm: 1, sm: 2, pel: 5),

            //SEPARATOR
            const SizedBox(
              width: 8.0,
            ),
            Container(
              width: 2.0,
              height: 100.0,
              color: Colors.blueGrey[100],
            ),
            const SizedBox(
              width: 8.0,
            ),

            //FieldWorkers
            _fieldWorkers(myWidth: boxWidth, adm: 1, mand: 1, tuk: 15, lad: 12)
          ],
        ),
      ),
    ),
  );
}

Widget _mainWorkers({double? myWidth, int? pm, int? sm, int? pel}) {
  List titleMainWorkers = ['Project Manager', 'Site Manager', 'Pelaksana'];
  List totalMainWorkers = ['$pm', '$sm', '$pel'];
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      //Judul
      Text(
        'Tenaga Kerja Lapangan',
        style: GoogleFonts.lato(
            textStyle: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      const SizedBox(
        height: 8.0,
      ),

      //ROW Main
      SizedBox(
        width: myWidth! * .6,
        height: 150.0,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: titleMainWorkers.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 95.0,
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.blue[50]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.helmetSafety,
                        color: index == 0
                            ? Colors.white
                            : index == 1
                                ? Colors.blue
                                : Colors.yellow,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        titleMainWorkers[index],
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(totalMainWorkers[index]),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 8.0,
      ),
    ],
  );
}

Widget _fieldWorkers(
    {double? myWidth, int? adm, int? mand, int? tuk, int? lad}) {
  List fieldWorkersTitle = ['Adm. Logistik', 'Mandor', 'Tukang', 'Laden'];
  List fieldWorkersTotal = ['$adm', '$mand', '$tuk', '$lad'];
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Tenaga Kerja Lapangan',
        style: GoogleFonts.montserrat(
            textStyle: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      const SizedBox(
        height: 16.0,
      ),
      SizedBox(
        width: myWidth! * .3,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: fieldWorkersTitle.length,
          itemBuilder: (context, index) => Row(
            children: [
              Container(color: Colors.blue, width: 2.0, height: 12.0),
              const SizedBox(
                width: 8.0,
              ),
              Text('${fieldWorkersTitle[index]}: ${fieldWorkersTotal[index]}'),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 8.0,
      ),
    ],
  );
}
