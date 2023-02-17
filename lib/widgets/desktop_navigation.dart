import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gspdt/constants/strings.dart';
import 'package:gspdt/constants/text_styles.dart';
import 'package:gspdt/home/home.dart';
import 'package:gspdt/pages/konstruksi/konstruksi_page.dart';
import 'package:gspdt/pages/outsourcing/outsourcing_page.dart';
import 'package:gspdt/pages/portofolio/portofolio_page.dart';
import 'package:gspdt/pages/yaumi/yaumi_page.dart';
import 'package:gspdt/controllers/desktop_navigation_controller.dart';

class DesktopNavigation extends StatefulWidget {
  const DesktopNavigation({super.key});

  @override
  State<DesktopNavigation> createState() => _DesktopNavigationState();
}

class _DesktopNavigationState extends State<DesktopNavigation> {
  final _deskNavController = Get.put(DesktopNavigationController());
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
                  onHover: (value) => _deskNavController.isOnHover[0],
                  onTap: () => Get.off(() => const Home()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Beranda',
                          style: TextStyle(color: Colors.white)),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Obx(
                        () => Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _deskNavController.isOnHover[0],
                          child: Container(
                            width: 35.0,
                            height: 5.0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                //portfolio
                InkWell(
                  onTap: () => Get.to(() => PortofolioPage()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Portofolio', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),

                //Construction Project
                InkWell(
                  onTap: () => Get.to(() => KonstruksiPage()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Proyek Konstruksi',
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),

                //outsourcing
                InkWell(
                  onTap: () => Get.to(() => OutsourcingPage()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Outsourcing', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),

                //Yaumi
                InkWell(
                  onTap: () => Get.to(() => YaumiPage()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Yaumi', style: TextStyle(color: Colors.white))
                    ],
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
