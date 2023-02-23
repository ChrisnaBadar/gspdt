import 'package:flutter/material.dart';
import 'package:gspdt/pages/konstruksi/widgets/project_details_body.dart';
import 'package:gspdt/pages/konstruksi/widgets/project_details_header.dart';

Widget projectDetails(BuildContext context) {
  return Expanded(
    flex: 4,
    child: Column(
      children: [
        //header
        ProjectDetailsHeader(),
        //separator
        Container(
          color: const Color.fromARGB(255, 195, 195, 195),
          height: 2.0,
        ),

        //body
        projectDetailsBody(context)
      ],
    ),
  );
}
