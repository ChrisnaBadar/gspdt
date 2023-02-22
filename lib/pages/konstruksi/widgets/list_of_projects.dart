import 'package:flutter/material.dart';
import 'package:gspdt/pages/konstruksi/widgets/list_of_projects_body.dart';
import 'package:gspdt/pages/konstruksi/widgets/list_of_projects_header.dart';

Widget listOfProjects() {
  return Expanded(
    flex: 1,
    child: Container(
      color: Colors.blueGrey[100],
      child: Column(
        children: [listOfProjectsHeader(), listOfProjectsBody()],
      ),
    ),
  );
}
