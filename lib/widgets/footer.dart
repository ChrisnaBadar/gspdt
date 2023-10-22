import 'package:flutter/material.dart';
import 'package:gspdt/constants/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF333333), // Background color #333333
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Row(
        children: [
          Expanded(child: leftFooter()),
          Expanded(child: rightFooter())
        ],
      ),
    );
  }
}

Widget leftFooter() {
  return Container(
    child: Column(
      children: [
        //Logo
        Image.asset(
          AppImages.LOGO_LIGHT,
        ),
        SizedBox(
          height: 16.0,
        ),
        // About or Description
        Row(
          children: [
            Spacer(),
            TextButton.icon(
                onPressed: null,
                icon: Iconify(
                  EntypoSocial.facebook,
                  color: AppThemes.primaryTextDark,
                ),
                label: Text(
                  '/gspdt',
                  style: AppTextstyles().paragraphDark(),
                )),
            TextButton.icon(
                onPressed: null,
                icon: Iconify(
                  EntypoSocial.instagram,
                  color: AppThemes.primaryTextDark,
                ),
                label: Text(
                  '/gspdt',
                  style: AppTextstyles().paragraphDark(),
                )),
            TextButton.icon(
                onPressed: null,
                icon: Iconify(
                  EntypoSocial.linkedin,
                  color: AppThemes.primaryTextDark,
                ),
                label: Text(
                  'gspdt',
                  style: AppTextstyles().paragraphDark(),
                )),
            Spacer()
          ],
        )
      ],
    ),
  );
}

Widget rightFooter() {
  return Container(
    child: Column(
      children: [
        Text(
          'Footer Content',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Menu Items
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            // Contact Information
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Email: contact@example.com',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Phone: +1 (123) 456-7890',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Address: 123 Street Name, City, Country',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            // Privacy Policy and Author
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Terms of Service',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Web Author: Your Name',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
