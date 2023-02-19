import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gspdt/constants/strings.dart';
import 'package:gspdt/pages/policies/privacy_policy_page.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 360,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Column(
                    children: [
                      Text(
                        'Global Solution Provider',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),

                      const SizedBox(
                        height: 16,
                      ),

                      //Follow Social Media
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Follow Us',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                  //trademark and company year
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.rightsReserved,
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 12)),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),

                      //address
                      Text(
                        Strings.alamat,
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 12)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NAVIGATION',
                            style: GoogleFonts.montserrat(
                                textStyle:
                                    const TextStyle(color: Colors.white)),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextButton(
                              onPressed: () {}, child: const Text('Home')),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Construction')),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Outsourcing')),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextButton(
                              onPressed: () {}, child: const Text('Yaumi')),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextButton(
                              onPressed: () {}, child: const Text('About Us')),
                        ],
                      ),
                      const SizedBox(
                        width: 32.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'POLICIES',
                            style: GoogleFonts.montserrat(
                                textStyle:
                                    const TextStyle(color: Colors.white)),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextButton(
                              onPressed: () =>
                                  Get.to(() => const PrivacyPolicyPage()),
                              child: const Text('Privacy Policy')),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Terms and Services')),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextButton(
                              onPressed: () {}, child: const Text('FAQ')),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Company Profile')),
                        ],
                      )
                    ],
                  ),
                  Text(
                    'This website powered by Zatunr Studio which is a digital software developer domiciled in Indonesia. All rights reserved to the developer.',
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(color: Colors.white)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
