import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/fundraise_model.dart';
import 'package:gspdt/pages/donation_page/donate_page.dart';
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
    print(widget.data.id);
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

                  //Column of donation bar
                  SliverToBoxAdapter(child: _donationProgreeBar(widget.data)),

                  //DONATE BUTTON
                  SliverToBoxAdapter(child: _donationButton(widget.data)),

                  //FUNDRAISER LISTTILE
                  SliverToBoxAdapter(child: _fundraiser(widget.data)),

                  //ABOUT & REPORT TABS
                  SliverToBoxAdapter(child: _tabsHeader(widget.data))
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  NumberFormat.currency(locale: "id_ID", symbol: "Rp. ")
                      .format(int.parse(data.attributes!.collectedFund!)),
                  style: AppTextstyles(
                          font: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.bold)
                      .customTextDarkTheme(),
                ),
                Text(
                  "dari ${NumberFormat.currency(locale: "id_ID", symbol: "Rp.").format(int.parse(data.attributes!.targetDonation!))}",
                  style: AppTextstyles(
                          font: "Montserrat", fontSize: 12, myOpacity: .5)
                      .customTextDarkTheme(),
                )
              ],
            ),
          ),
          // //-------------- Second Row ---------------
          LinearPercentIndicator(
            lineHeight: 5,
            percent: (int.parse(data.attributes!.collectedFund!) /
                    int.parse(data.attributes!.collectedFund!))
                .toDouble(),
            progressColor: AppThemes.primaryColorDark,
            backgroundColor: AppThemes.secondaryColorLight,
          ),
          // //========= Third Row =========
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "${data.attributes!.jumlahDonatur} orang telah berdonasi",
                    style: AppTextstyles(
                            font: "Montserrat",
                            fontSize: 14,
                            darkThemeTextColor: AppThemes.accentTextLight,
                            fontWeight: FontWeight.bold)
                        .customTextDarkTheme(),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  "${data.attributes!.dateEnd!.difference(data.attributes!.dateStart!).inDays} Hari lagi",
                  style: AppTextstyles(
                          font: "Poppins",
                          fontSize: 12,
                          fontWeight: FontWeight.bold)
                      .customTextDarkTheme(),
                ),
              )
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
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => DonatePage(data: data),
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            backgroundColor: AppThemes.secondaryColorDark),
        child: Text(
          "INFAQ SEKARANG",
          style: AppTextstyles(
                  font: "Poppins",
                  darkThemeTextColor: AppThemes.secondaryTextDark,
                  fontWeight: FontWeight.bold)
              .customTextDarkTheme(),
        ),
      ),
    );
  }

  Widget _fundraiser(ListFundraiseModelDatum data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Penggalang Dana",
            style: AppTextstyles(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    darkThemeTextColor: AppThemes.primaryColorDark)
                .customTextDarkTheme(),
          ),
          ListTile(
            leading: const CircleAvatar(),
            title: Text(
              data.attributes!.namaPenggalang!,
              style: AppTextstyles(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      darkThemeTextColor: AppThemes.primaryColorDark)
                  .customTextDarkTheme(),
            ),
            subtitle: data.attributes!.verified!
                ? Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Verified",
                        style: AppTextstyles(
                                fontSize: 14,
                                darkThemeTextColor: AppThemes.primaryColorDark,
                                myOpacity: .3)
                            .customTextDarkTheme(),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Icon(
                        Icons.question_answer_sharp,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Not Verified",
                        style: AppTextstyles(
                                fontSize: 14,
                                darkThemeTextColor: AppThemes.primaryColorDark,
                                myOpacity: .3)
                            .customTextDarkTheme(),
                      ),
                    ],
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
      if (paragraph.type == 'paragraph') {
        for (var child in paragraph.children!) {
          if (child.type == 'text') {
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
        _reportList()
      ],
    );
  }

  Widget _reportList() {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.circle),
                  Container(
                    width: 5,
                    height: double.infinity,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Judul Laporan"),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Action Text"),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                        "Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text Description Text "),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 240,
                      decoration: BoxDecoration(border: Border.all()),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
