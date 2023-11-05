import 'package:gspdt/constants/constants.dart';

class DonationDetails extends StatelessWidget {
  final Map<String, dynamic> dataDonation;
  const DonationDetails({super.key, required this.dataDonation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Body
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 128.0, vertical: 32),
                  child: DonationDetailsBody(
                    dataDonation: dataDonation,
                  ),
                ),
                const Footer()
              ],
            ),
          ),

          //Header
          const Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: CustomHeader(),
          )
        ],
      ),
    );
  }
}

class DonationDetailsBody extends StatelessWidget {
  final Map<String, dynamic> dataDonation;
  const DonationDetailsBody({super.key, required this.dataDonation});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                DonationDetailsLeftBodyWidget(dataDonation: dataDonation),
              ],
            ),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: DonationDetailsRightBodyWidget(),
          ),
        )
      ],
    );
  }
}

class DonationDetailsLeftBodyWidget extends StatelessWidget {
  final Map<String, dynamic> dataDonation;
  const DonationDetailsLeftBodyWidget({super.key, required this.dataDonation});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Title
        Text(
          dataDonation['NAME'],
          style: AppTextstyles().h1Light(),
        ),
        const SizedBox(
          height: 8.0,
        ),
        //IMAGE
        Image.asset(
          dataDonation['MAIN_IMAGE'],
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 8.0,
        ),
        //Fundraiser
        Text(dataDonation['ORGANIZER']),
        const SizedBox(
          height: 8.0,
        ),
        //Divider
        const Divider(),
        const SizedBox(
          height: 8.0,
        ),
        //DESCRIPTIOn
        DonationDescriptionBody(dataDonation: dataDonation),
        const SizedBox(
          height: 8.0,
        ),
        //DONATE & SHARE BUTTON
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonTheme.primaryButtonStyle(),
                    onPressed: () {},
                    child: Text(
                      'DONATE',
                      style: AppTextstyles().lightThemeButtonTextStyle(),
                    )),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonTheme.secondaryButtonStyle(),
                    onPressed: () {},
                    child: Text(
                      'SHARE',
                      style: AppTextstyles().darkThemeButtonTextStyle(),
                    )),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        //Divider
        const Divider(),
        const SizedBox(
          height: 8.0,
        ),
        //FUNDRAISER CONTACT
        Text(
          'Organizer',
          style: AppTextstyles().h1Light(),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dataDonation['CONTACT'],
                  style: AppTextstyles().h3Light(),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Organizer',
                  style: AppTextstyles().paragraphLight(),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Location',
                  style: AppTextstyles().paragraphLight(),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                ElevatedButton(
                    style: ButtonTheme.primaryButtonStyle(),
                    onPressed: () {},
                    child: Text(
                      'Contact',
                      style: AppTextstyles().lightThemeButtonTextStyle(),
                    ))
              ],
            )
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        //DIVIDER
        const Divider(),
        const SizedBox(
          height: 16.0,
        ),
        //SUPPORTER's WORDS and Donation ammount
        //DIVDER
        //CREATED ON
        Text(
          dataDonation['DATE_CREATED'],
          style: AppTextstyles().subheadingLight(),
        ),
        const SizedBox(
          height: 16.0,
        ),
        const Divider(),
        const SizedBox(
          height: 16.0,
        ),
        //
      ],
    );
  }
}

class DonationDetailsRightBodyWidget extends StatelessWidget {
  const DonationDetailsRightBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Title
        Text(
          ' ',
          style: AppTextstyles().h1Light(),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Card(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: '\$ 00.00',
                            style: AppTextstyles(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ).customTextDarkTheme()),
                        const TextSpan(text: ' '),
                        TextSpan(
                            text: 'USD raised of \$20,000 goal',
                            style: AppTextstyles(
                              fontSize: 14,
                            ).customTextDarkTheme()),
                      ]),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 3,
                      color: AppThemes.accentTextDark,
                      child: FractionallySizedBox(
                        widthFactor: .3,
                        heightFactor: 1,
                        child: Container(
                          color: AppThemes.primaryAccentDark,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      '000 donations',
                      style: AppTextstyles(
                              darkThemeTextColor: AppThemes.accentTextDark)
                          .customTextDarkTheme(),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonTheme.primaryButtonStyle(),
                          onPressed: () {},
                          child: Text(
                            'DONATE',
                            style: AppTextstyles().lightThemeButtonTextStyle(),
                          )),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonTheme.secondaryButtonStyle(),
                          onPressed: () {},
                          child: Text(
                            'SHARE',
                            style: AppTextstyles().darkThemeButtonTextStyle(),
                          )),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const ListTile(
                      leading: CircleAvatar(),
                      title: Text('000 people just donated'),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Column(
                      children: List.generate(
                          3,
                          (index) => const ListTile(
                                leading: CircleAvatar(),
                                title: Text('DONATOR_NAME'),
                                subtitle: Row(children: [
                                  Text('\$ 00'),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text('Recent Donation')
                                ]),
                              )),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ButtonTheme.primaryButtonStyle(),
                            onPressed: () {},
                            child: Text(
                              'See All',
                              style:
                                  AppTextstyles().lightThemeButtonTextStyle(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                            style: ButtonTheme.secondaryButtonStyle(),
                            onPressed: () {},
                            child: Text(
                              'See Top Donations',
                              style: AppTextstyles().darkThemeButtonTextStyle(),
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),

        //RELATED BLOG
        const SizedBox(
          height: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Related Article',
              style: AppTextstyles().h2Light(),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: const Placeholder(),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const ListTile(
              title: Text('ARTICLE_TITLE'),
              subtitle: Text('ARTICLE_HIGHLIGHT'),
            )
          ],
        ),

        //PROJECT
        const SizedBox(
          height: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How The Project Go So Far',
              style: AppTextstyles().h2Light(),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: const Placeholder(),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const ListTile(
              title: Text('PROJECT_TITLE'),
              subtitle: Text('PROJECT_HIGHLIGHT'),
            )
          ],
        ),
      ],
    );
  }
}

class DonationDescriptionBody extends StatelessWidget {
  final Map<String, dynamic> dataDonation;
  const DonationDescriptionBody({super.key, required this.dataDonation});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: dataDonation['DESCRIPTION']['OPENING'],
            style: AppTextstyles().paragraphLight(),
          ),
          TextSpan(
            text: dataDonation['DESCRIPTION']['DESCRIPTION'],
            style: AppTextstyles().paragraphLight(),
          ),
          TextSpan(
            text: dataDonation['DESCRIPTION']['QURAN_VERSE'],
            style: AppTextstyles().paragraphLight(),
          ),
          TextSpan(
            text: dataDonation['DESCRIPTION']['HADITH'],
            style: AppTextstyles().paragraphLight(),
          ),
          TextSpan(
            text: dataDonation['DESCRIPTION']['CLOSING_WORDS'],
            style: AppTextstyles().paragraphLight(),
          ),
        ],
      ),
    );
  }
}
