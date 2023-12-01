import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/fundraise_model.dart';
import 'package:gspdt/pages/donation_page/donate_page.dart';
import 'package:gspdt/pages/donation_page/donators_list.dart';
import 'package:gspdt/pages/donation_page/fundraiser_detail.dart';
import 'package:gspdt/widgets/custom_button.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FundraiseDetails extends StatefulWidget {
  final ListFundraiseModelDatum data;
  const FundraiseDetails({super.key, required this.data});

  @override
  State<FundraiseDetails> createState() => _FundraiseDetailsState();
}

class _FundraiseDetailsState extends State<FundraiseDetails>
    with SingleTickerProviderStateMixin {
  double screenWidth = 480.0;
  late TabController tabController;
  late ScrollController _scrollController;
  bool fixedScroll = false;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _scrollListener() {
    if (fixedScroll) {
      _scrollController.jumpTo(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.secondaryColorLight.withOpacity(.2),
      body: Center(
        child: Container(
          color: Colors.white,
          width: screenWidth,
          child: NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder: (context, value) {
                return [
                  //MAIN_IMAGE
                  SliverToBoxAdapter(child: _mainImage(widget.data)),

                  //TITLE
                  SliverToBoxAdapter(child: _title(widget.data)),
                  SliverToBoxAdapter(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  )),

                  //Column of donation bar
                  SliverToBoxAdapter(child: _donationProgreeBar(widget.data)),

                  //DONATE BUTTON
                  SliverToBoxAdapter(child: _donationButton(widget.data)),
                  SliverToBoxAdapter(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  )),

                  //FUNDRAISER LISTTILE
                  SliverToBoxAdapter(child: _fundraiser(widget.data)),

                  //ABOUT & REPORT TABS
                  SliverToBoxAdapter(child: _tabsHeader(widget.data)),
                ];
              },
              body: _tabsItems(widget.data)),
        ),
      ),
    );
  }

  Widget _mainImage(ListFundraiseModelDatum data) {
    return Container(
      width: screenWidth,
      height: 240,
      decoration: BoxDecoration(border: Border.all()),
      child: Image.network(
        "${AppStrings.API_ADDRESS}${data.attributes!.mainImage!.data!.attributes!.url}",
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _title(ListFundraiseModelDatum data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        data.attributes!.title!,
        style: AppTextstyles().h3Light(),
      ),
    );
  }

  Widget _donationProgreeBar(ListFundraiseModelDatum data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        children: [
          //========= First Row =========

          // //-------------- Second Row ---------------
          LinearPercentIndicator(
            lineHeight: 5,
            percent: (data.attributes!.donations!.data!
                        .where(
                            (e) => e.attributes!.donationStatus! == "Diterima")
                        .map((e) => int.parse(e.attributes!.nominal!))
                        .toList()
                        .reduce((v, e) => v + e) /
                    int.parse(data.attributes!.targetDonation!))
                .toDouble(),
            progressColor: AppThemes.primaryColorDark,
            backgroundColor: AppThemes.secondaryColorLight,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  NumberFormat.currency(locale: "id_ID", symbol: "Rp. ").format(
                      data
                          .attributes!.donations!.data!
                          .where((e) =>
                              e.attributes!.donationStatus! == "Diterima")
                          .map((e) => int.parse(e.attributes!.nominal!))
                          .toList()
                          .reduce((v, e) => v + e)),
                  style: AppTextstyles(
                          font: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.bold)
                      .customTextDarkTheme(),
                ),
                Text(
                  " dari ${NumberFormat.currency(locale: "id_ID", symbol: "Rp.").format(int.parse(data.attributes!.targetDonation!))}",
                  style: AppTextstyles(
                          font: "Montserrat", fontSize: 12, myOpacity: .5)
                      .customTextDarkTheme(),
                )
              ],
            ),
          ),
          // //========= Third Row =========
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DonatorsList(
                                data: widget.data.attributes!.donations!.data!,
                              ))),
                  child: Text(
                    "${data.attributes!.donations!.data!.where((e) => e.attributes!.donationStatus! == "Diterima").length} orang telah berdonasi",
                    style: AppTextstyles(
                            font: "Montserrat",
                            fontSize: 14,
                            darkThemeTextColor: AppThemes.accentTextLight,
                            fontWeight: FontWeight.bold)
                        .customTextDarkTheme(),
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget _donationButton(ListFundraiseModelDatum data) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      width: screenWidth,
      child: CustomButton(
          onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => DonatePage(data: data),
                ),
              ),
          text: 'Infaq'),
    );
  }

  Widget _fundraiser(ListFundraiseModelDatum data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Digalang oleh: ",
            style: AppTextstyles(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    darkThemeTextColor: AppThemes.primaryColorDark)
                .customTextDarkTheme(),
          ),
          ListTile(
            leading: ClipOval(
              child: Image.network(
                  data.attributes!.fundraiser!.data!.attributes!.imageLink!),
            ),
            title: Text(
              data.attributes!.fundraiser!.data!.attributes!.name!,
              style: AppTextstyles(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      darkThemeTextColor: AppThemes.primaryColorDark)
                  .customTextDarkTheme(),
            ),
            subtitle: Text(
              data.attributes!.fundraiser!.data!.attributes!.email!,
              style: AppTextstyles(
                      font: "Poppins",
                      fontSize: 12,
                      lightThemeTextColor: AppThemes.secondaryTextLight)
                  .customTextLightTheme(),
            ),
          )
        ],
      ),
    );
  }

  Widget _tabsHeader(ListFundraiseModelDatum data) {
    return TabBar(controller: tabController, tabs: const [
      Tab(
        text: "Tentang",
      ),
      Tab(
        text: "Laporan",
      )
    ]);
  }

  Widget _tabsItems(ListFundraiseModelDatum data) {
    List<TextSpan> textSpans = [];

    for (var paragraph in data.attributes!.description!) {
      if (paragraph.type == DescriptionType.PARAGRAPH) {
        for (var child in paragraph.children!) {
          if (child.type == ChildType.TEXT) {
            textSpans.add(TextSpan(
              text: '${child.text}\n',
              style: TextStyle(fontSize: 16.0), // Set your desired style
            ));
          }
        }
      }
    }

    return TabBarView(
      controller: tabController,
      children: [
        SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Text.rich(TextSpan(children: textSpans)),
          ),
        ),
        SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(8), child: _reportList(data)))
      ],
    );
  }

  Widget _reportList(ListFundraiseModelDatum data) {
    return ListView.builder(
      itemCount: data.attributes!.fundraiseReports!.data!.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final title =
            data.attributes!.fundraiseReports!.data![index].attributes!.title;
        final description = data
            .attributes!.fundraiseReports!.data![index].attributes!.description;
        final action =
            data.attributes!.fundraiseReports!.data![index].attributes!.action;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Container(
                height: double.infinity,
                color: Colors.black,
                width: 2,
              ),
              title: Text(
                title ?? '',
                style: AppTextstyles(
                        font: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        lightThemeTextColor: AppThemes.secondaryTextLight)
                    .customTextLightTheme(),
              ),
              subtitle: Text(
                data.attributes!.fundraiseReports!.data![index].attributes!
                    .createdAt!
                    .toString(),
                style: AppTextstyles(
                        font: "Poppins",
                        fontSize: 12,
                        lightThemeTextColor: AppThemes.accentTextLight)
                    .customTextLightTheme(),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Text(
                action ?? '',
                textAlign: TextAlign.start,
                style: AppTextstyles(
                        font: "Poppins",
                        fontSize: 12,
                        lightThemeTextColor: AppThemes.primaryTextLight)
                    .customTextLightTheme(),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Text(
                description ?? '',
                style: AppTextstyles(
                        font: "Poppins",
                        fontSize: 12,
                        lightThemeTextColor: AppThemes.primaryTextLight)
                    .customTextLightTheme(),
              ),
            )
          ],
        );
      },
    );
  }
}
