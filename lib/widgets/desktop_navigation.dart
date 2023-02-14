import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gspdt/constants/strings.dart';
import 'package:gspdt/constants/text_styles.dart';
import 'package:gspdt/pages/yaumi/yaumi_page.dart';

class DesktopNavigation extends StatefulWidget {
  const DesktopNavigation({super.key});

  @override
  State<DesktopNavigation> createState() => _DesktopNavigationState();
}

class _DesktopNavigationState extends State<DesktopNavigation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                Strings.globalSolutionProvider,
                style: TextStyles.logo,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //home
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text('Beranda')],
                  ),
                ),

                //portfolio
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text('Portofolio')],
                  ),
                ),

                //Construction Project
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text('Proyek Konstruksi')],
                  ),
                ),

                //outsourcing
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text('Outsourcing')],
                  ),
                ),

                //Yaumi
                InkWell(
                  onTap: () => Get.to(() => YaumiPage()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text('Yaumi')],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
