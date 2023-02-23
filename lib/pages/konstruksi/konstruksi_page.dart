import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gspdt/pages/konstruksi/widgets/list_of_projects.dart';
import 'package:gspdt/pages/konstruksi/widgets/project_details.dart';

class KonstruksiPage extends StatefulWidget {
  const KonstruksiPage({super.key});

  @override
  State<KonstruksiPage> createState() => _KonstruksiPageState();
}

class _KonstruksiPageState extends State<KonstruksiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 247, 243),
      body: Row(
        children: [
          listOfProjects(),
          Container(
            color: const Color.fromARGB(255, 195, 195, 195),
            width: 2.0,
          ),
          projectDetails(context)
        ],
      ),
    );
  }
}
