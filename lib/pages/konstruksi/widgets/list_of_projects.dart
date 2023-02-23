import 'package:flutter/material.dart';
import 'package:gspdt/pages/konstruksi/widgets/list_of_projects_body.dart';
import 'package:gspdt/pages/konstruksi/widgets/list_of_projects_header.dart';

Widget listOfProjects() {
  return Expanded(
    flex: 1,
    child: Container(
      color: const Color.fromARGB(255, 37, 37, 37),
      child: Column(
        children: [
          listOfProjectsHeader(),
          Container(
            color: const Color.fromARGB(255, 195, 195, 195),
            height: 2.0,
          ),
          listOfProjectsBody()
        ],
      ),
    ),
  );
}
