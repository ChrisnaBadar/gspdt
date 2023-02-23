import 'package:flutter/material.dart';

Widget projectDetailsProblems(BuildContext context) {
  final boxWidth = MediaQuery.of(context).size.width * .3;
  const boxHeight = 200.0;
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: SizedBox(
      width: boxWidth,
      height: boxHeight,
    ),
  );
}
