import 'package:flutter/material.dart';
import 'package:gspdt/widgets/mobile_navigation.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(),
      drawer: const MobileNavigation(),
      body: Container(),
    );
  }
}
