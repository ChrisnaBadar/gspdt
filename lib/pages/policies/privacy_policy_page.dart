import 'package:flutter/material.dart';
import 'package:gspdt/constants/strings.dart';
import 'package:gspdt/constants/text_styles.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text.rich(TextSpan(children: [
                TextSpan(text: Strings.policyTitle, style: TextStyles.heading),
                TextSpan(text: Strings.policyResume, style: TextStyles.body),
                TextSpan(text: Strings.policyh1, style: TextStyles.subHeading),
                TextSpan(text: Strings.policyp1, style: TextStyles.body1),
                TextSpan(text: Strings.policyh2, style: TextStyles.subHeading),
                TextSpan(text: Strings.policyp2, style: TextStyles.body1),
                TextSpan(text: Strings.policyh3, style: TextStyles.subHeading),
                TextSpan(text: Strings.policyp3, style: TextStyles.body1),
                TextSpan(text: Strings.policyh4, style: TextStyles.subHeading),
                TextSpan(text: Strings.policyp4, style: TextStyles.body1),
                TextSpan(text: Strings.policyh5, style: TextStyles.subHeading),
                TextSpan(text: Strings.policyp5, style: TextStyles.body1),
                TextSpan(text: Strings.policyh6, style: TextStyles.subHeading),
                TextSpan(text: Strings.policyp6, style: TextStyles.body1),
                TextSpan(text: Strings.policyh7, style: TextStyles.subHeading),
                TextSpan(text: Strings.policyp7, style: TextStyles.body1),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
