import 'package:dartz/dartz.dart' as dartz;
import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/fundraise_model.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FundraiseListPage extends StatefulWidget {
  const FundraiseListPage({super.key});

  @override
  State<FundraiseListPage> createState() => _FundraiseListPageState();
}

class _FundraiseListPageState extends State<FundraiseListPage> {
  Future<dartz.Either<String, ListFundraiseModel>>? listFundraiseModel;
  final double screenWidth = 480;

  @override
  void initState() {
    listFundraiseModel = DbServices().fetchFundraiseData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(
          child: CustomMobileHeader(),
        ),
        backgroundColor: AppThemes.secondaryColorLight.withOpacity(.2),
        body: Stack(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.only(top: 100),
                color: Colors.white,
                width: screenWidth,
                child: FutureBuilder(
                    future: listFundraiseModel,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        final result = snapshot.data!.fold(
                            (l) => 'Data Not Exist',
                            (r) => ListFundraiseModel(data: r.data));
                        final response = result != String
                            ? result as ListFundraiseModel
                            : null;
                        return ListView.builder(
                          itemCount: response!.data!.length,
                          itemBuilder: (context, index) {
                            return _itemsCard(response.data![index]);
                          },
                        );
                      } else {
                        return const Center(
                          child: Text("Data Gagal Diambil"),
                        );
                      }
                    }),
              ),
            ),
            Positioned(
              width: 480,
              height: 100,
              top: 0,
              left: (MediaQuery.of(context).size.width - 480) / 2,
              child: Column(
                children: [
                  customAppbar(
                    parentWidth: screenWidth,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Infaq Pilihan",
                    style: AppTextstyles().h3Light(),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget _itemsCard(ListFundraiseModelDatum donation) {
    double percentage = donation.attributes!.donations!.data!
            .where(
                (donation) => donation.attributes?.donationStatus == "Diterima")
            .map((donation) =>
                double.tryParse(donation.attributes?.nominal ?? '') ?? 0.0)
            .fold(0.0, (acc, amount) => acc + amount) /
        num.tryParse(donation.attributes!.targetDonation!)!;
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => FundraiseDetails(
            data: donation,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0),
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: .8,
                child: Image.network(
                  "${AppStrings.API_ADDRESS}${donation.attributes!.mainImage!.data!.attributes!.url!}",
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        donation.attributes!.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextstyles(
                                font: "Roboto",
                                fontSize: 13,
                                fontWeight: FontWeight.bold)
                            .customTextDarkTheme(),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      LinearPercentIndicator(
                        lineHeight: 5,
                        percent: percentage,
                        progressColor: AppThemes.primaryColorDark,
                        backgroundColor: AppThemes.secondaryColorLight,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Terkumpul",
                                style: AppTextstyles(
                                        font: "Poppins",
                                        fontSize: 12,
                                        lightThemeTextColor:
                                            AppThemes.primaryColorDark,
                                        myOpacity: .4)
                                    .customTextLightTheme(),
                              ),
                              Text(
                                NumberFormat.simpleCurrency(
                                        locale: "id_ID",
                                        name: 'IDR',
                                        decimalDigits: 0)
                                    .format(donation
                                        .attributes!.donations!.data!
                                        .where((donation) =>
                                            donation
                                                .attributes?.donationStatus ==
                                            "Diterima")
                                        .map((donation) =>
                                            double.tryParse(
                                                donation.attributes?.nominal ??
                                                    '') ??
                                            0.0)
                                        .fold(0.0,
                                            (acc, amount) => acc + amount)),
                                style: AppTextstyles(
                                        font: "Poppins",
                                        fontSize: 14,
                                        lightThemeTextColor:
                                            AppThemes.primaryColorDark,
                                        fontWeight: FontWeight.bold)
                                    .customTextLightTheme(),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Tersisa",
                                style: AppTextstyles(
                                        font: "Poppins",
                                        fontSize: 12,
                                        lightThemeTextColor:
                                            AppThemes.primaryColorDark,
                                        myOpacity: .4)
                                    .customTextLightTheme(),
                              ),
                              Text(
                                "${donation.attributes!.dateEnd!.difference(donation.attributes!.dateStart!).inDays} Hari lagi",
                                style: AppTextstyles(
                                        font: "Poppins",
                                        fontSize: 14,
                                        lightThemeTextColor:
                                            AppThemes.primaryColorDark,
                                        fontWeight: FontWeight.bold)
                                    .customTextLightTheme(),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
