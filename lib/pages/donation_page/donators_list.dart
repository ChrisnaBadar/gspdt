import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/fundraise_model.dart';

class DonatorsList extends StatefulWidget {
  final List<DonationsDatum> data;
  const DonatorsList({super.key, required this.data});

  @override
  State<DonatorsList> createState() => _DonatorsListState();
}

class _DonatorsListState extends State<DonatorsList> {
  @override
  Widget build(BuildContext context) {
    final donatedPeople = widget.data
        .where((e) => e.attributes!.donationStatus == "Diterima")
        .toList();
    final result = donatedPeople.map((e) => e.attributes!.nominal).toList();
    print(result);
    return Scaffold(
      body: ListView.builder(
        itemCount: donatedPeople.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(donatedPeople[index].attributes!.nama!),
            subtitle: Text("Rp. ${donatedPeople[index].attributes!.nominal!}"),
          );
        },
      ),
    );
  }
}
