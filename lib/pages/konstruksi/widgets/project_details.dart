import 'package:flutter/material.dart';
import 'package:gspdt/pages/konstruksi/widgets/project_details_body.dart';
import 'package:gspdt/pages/konstruksi/widgets/project_details_header.dart';

Widget projectDetails(BuildContext context) {
  return Expanded(
    flex: 3,
    child: Column(
      children: [
        //header
        ProjectDetailsHeader(),
        //separator
        Container(
          height: 1.0,
          color: Colors.blueGrey[200],
        ),

        //body
        projectDetailsBody(context)
      ],
    ),
  );
}
