import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget projectDetailsWheater() {
  List wheathersList = [
    'Hujan Geremis',
    'Hujan Deras',
    'Hujan',
  ];
  List timesList = [
    '08:00 - 09:00',
    '09:00 - 11:00',
    '11:00 - 16:00',
  ];
  return SizedBox(
    width: 500.0,
    height: 95.0,
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: wheathersList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.cloudRain,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(wheathersList[index]),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(timesList[index]),
                const SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 6.0,
          ),
          index == 2
              ? Container()
              : Container(
                  width: 2.0,
                  height: 75.0,
                  color: Colors.blueGrey[200],
                )
        ],
      ),
    ),
  );
}
