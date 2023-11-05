import 'package:gspdt/constants/constants.dart';

class DonationListPage extends StatelessWidget {
  const DonationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                //Banner
                DonationBanner(),

                //List Section
                DonationListSection(),

                //How it works
                HowDonationWork(),

                //footer

                Footer()
              ],
            ),
          ),
          Positioned(top: 0, right: 0, left: 0, child: CustomHeader())
        ],
      ),
    );
  }
}

class DonationBanner extends StatelessWidget {
  const DonationBanner({super.key});

  @override
  Widget build(BuildContext context) {
    double bannerWidth = MediaQuery.of(context).size.width;
    double bannerHeigth = ((bannerWidth / 16) * 9) - 300;
    return Container(
      width: bannerWidth,
      height: bannerHeigth,
      child: Row(
        children: [
          //Text
          Expanded(
            flex: 3,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 128.0, vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DataDonation.myDonationsList['NAME']![0]['NAME'],
                    style: AppTextstyles().h1Light(),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 75,
                        height: 5,
                        color: AppThemes.primaryColorLight,
                      ),
                      Container(
                        width: 75,
                        height: 5,
                        color: AppThemes.primaryAccentLight,
                      ),
                      Container(
                        width: 75,
                        height: 5,
                        color: AppThemes.secondaryColorLight,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    DataDonation.myDonationsList['NAME']![0]['HIGHLIGHT'],
                    style: AppTextstyles().subheadingLight(),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  ElevatedButton(
                      style: ButtonTheme.primaryButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        'Detail',
                        style: AppTextstyles().lightThemeButtonTextStyle(),
                      ))
                ],
              ),
            ),
          ),

          //Image
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
              width: bannerWidth / 2,
              height: bannerHeigth,
              child: Image.asset(
                DataDonation.myDonationsList['NAME']![0]['MAIN_IMAGE'],
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DonationListSection extends StatelessWidget {
  const DonationListSection({super.key});

  @override
  Widget build(BuildContext context) {
    double sectionWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 256, vertical: 64),
      width: sectionWidth,
      color: AppThemes.secondaryColorLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'List of our registered fundraising program',
            style: AppTextstyles().h2Light(),
          ),
          const SizedBox(
            height: 32,
          ),
          StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 16,
            crossAxisSpacing: 64,
            children: List.generate(
                DataDonation.myDonationsList['NAME']!.length,
                (index) => StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.3,
                    child: Container(
                      color: AppThemes.secondaryAccentLight,
                      child: DonationCard(
                        dataDonation:
                            DataDonation.myDonationsList['NAME']![index],
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DonationDetails(
                                dataDonation: DataDonation
                                    .myDonationsList['NAME']![index]),
                          ),
                        ),
                      ),
                    ))),
          ),
          const SizedBox(
            height: 32.0,
          ),
        ],
      ),
    );
  }
}

class HowDonationWork extends StatelessWidget {
  const HowDonationWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128.0, vertical: 32.0),
      child: Column(
        children: [
          Text(
            'How it works',
            style: AppTextstyles().h1Light(),
          ),
          const SizedBox(
            height: 16.0,
          ),
          StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            children: List.generate(
                6,
                (index) => StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: .5,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppThemes.primaryColorDark)),
                    ))),
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}

class DonationCard extends StatelessWidget {
  final Map<String, dynamic> dataDonation;
  final Function()? onTap;
  const DonationCard(
      {super.key, required this.dataDonation, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              dataDonation['MAIN_IMAGE'],
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Cianjur, Jawa Barat',
                    style: AppTextstyles(
                            darkThemeTextColor: AppThemes.accentTextLight,
                            fontWeight: FontWeight.bold)
                        .customTextDarkTheme(),
                  ),
                  Text(
                    dataDonation['NAME'],
                    style: AppTextstyles().h3Light(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    dataDonation['HIGHLIGHT'],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextstyles().paragraphLight(),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Last Donation 3d ago',
                    style: AppTextstyles().customTextDarkTheme(),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 3,
                        color: AppThemes.accentTextDark,
                      ),
                      Container(
                        width: 13,
                        height: 3,
                        color: AppThemes.primaryAccentDark,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: '\$ 23,00 raised ',
                        style: AppTextstyles(
                          fontWeight: FontWeight.bold,
                        ).customTextDarkTheme()),
                    TextSpan(
                        text: 'of \$ 20,000',
                        style: AppTextstyles(
                          fontWeight: FontWeight.normal,
                        ).customTextDarkTheme())
                  ]))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
