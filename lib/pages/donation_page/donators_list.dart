import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/fundraise_model.dart';

class DonatorsList extends StatefulWidget {
  final List<DonationsDatum> data;
  const DonatorsList({super.key, required this.data});

  @override
  State<DonatorsList> createState() => _DonatorsListState();
}

class _DonatorsListState extends State<DonatorsList> {
  double screenWidth = 480.0;
  @override
  Widget build(BuildContext context) {
    final result = widget.data
      ..sort((a, b) =>
          b.attributes!.createdAt!.compareTo(a.attributes!.createdAt!));
    final donatedPeople = result
        .where((e) => e.attributes!.donationStatus == "Diterima")
        .toList();
    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth,
          child: ListView.builder(
            itemCount: donatedPeople.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text(
                        donatedPeople[index].attributes!.nama!,
                        style: AppTextstyles(
                                font: "Poppins",
                                fontSize: 18,
                                lightThemeTextColor: AppThemes.accentTextDark,
                                fontWeight: FontWeight.bold)
                            .customTextLightTheme(),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rp. ${donatedPeople[index].attributes!.nominal!}",
                            style: AppTextstyles(
                                    font: "Roboto",
                                    fontSize: 14,
                                    lightThemeTextColor:
                                        AppThemes.primaryTextLight)
                                .customTextLightTheme(),
                          ),
                          DateTime.now()
                                      .difference(donatedPeople[index]
                                          .attributes!
                                          .createdAt!)
                                      .inMinutes <
                                  60
                              ? Text(
                                  "${DateTime.now().difference(donatedPeople[index].attributes!.createdAt!).inMinutes} Menit yang lalu")
                              : DateTime.now()
                                          .difference(donatedPeople[index]
                                              .attributes!
                                              .createdAt!)
                                          .inDays ==
                                      0
                                  ? Text(
                                      "${DateTime.now().difference(donatedPeople[index].attributes!.createdAt!).inHours} Jam yang lalu")
                                  : Text(
                                      "${DateTime.now().difference(donatedPeople[index].attributes!.createdAt!).inDays} Hari yang lalu")
                        ],
                      ),
                    ),
                    Text(
                      donatedPeople[index].attributes!.pesan!,
                      textAlign: TextAlign.start,
                      style: AppTextstyles(
                              font: "Roboto",
                              fontSize: 14,
                              lightThemeTextColor: AppThemes.accentTextLight)
                          .customTextLightTheme(),
                    ),
                    Divider()
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
