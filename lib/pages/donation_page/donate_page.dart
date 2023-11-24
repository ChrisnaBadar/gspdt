import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:gspdt/constants/constants.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gspdt/models/fundraise_model.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:gspdt/models/snap_payment_model.dart';
import 'package:url_launcher/url_launcher.dart';

final formkey = GlobalKey<FormBuilderState>();

class DonatePage extends StatefulWidget {
  final ListFundraiseModelDatum data;
  const DonatePage({super.key, required this.data});

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  late TextEditingController _nominalController;
  late TextEditingController _namaController;
  late TextEditingController _kontakController;
  late TextEditingController _pesanController;
  final double screenWidth = 480;
  final double customAppbarHeight = 150;
  final double buttonHeight = 200;

  String? fundraise;
  String? nominal;
  String? nama;
  String? kontak;
  String? pesan;

  @override
  void initState() {
    // TODO: implement initState
    _nominalController = TextEditingController();
    _namaController = TextEditingController();
    _kontakController = TextEditingController();
    _pesanController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.secondaryColorLight.withOpacity(.2),
      body: Center(
        child: Container(
          width: screenWidth,
          color: Colors.white,
          child: FormBuilder(
            key: formkey,
            child: Stack(
              children: [
                //From Nominal Infaq
                SingleChildScrollView(child: _donationForm()),

                //Button
                Positioned(
                  bottom: 0,
                  child: _donateButton(),
                ),

                //Custom appbar
                _customAppbar(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _customAppbar() {
    return Container(
      height: customAppbarHeight,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back)),
                Text(
                  "Infaq Sekarang",
                  style: AppTextstyles().h2Light(),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 32.0,
          ),
          ListTile(
            leading: const CircleAvatar(),
            title: Text(
              widget.data.attributes!.title!,
              style: AppTextstyles(
                      font: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      lightThemeTextColor: AppThemes.secondaryTextLight)
                  .customTextLightTheme(),
            ),
          )
        ],
      ),
    );
  }

  Widget _donationForm() {
    List cacc = [6, 6, 3, 3, 3, 3, 6, 6, 6, 6, 6];
    List macc = [1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 1];
    return Container(
      padding: EdgeInsets.only(top: customAppbarHeight),
      child: StaggeredGrid.count(
        crossAxisCount: 6,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: List.generate(
            11,
            (index) => StaggeredGridTile.count(
                crossAxisCellCount: cacc[index],
                mainAxisCellCount: macc[index],
                child: Container(
                  alignment:
                      index == 0 ? Alignment.centerLeft : Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _formBuilder()[index],
                  ),
                ))),
      ),
    );
  }

  Widget _donateButton() {
    double mediaSize = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      width: mediaSize <= screenWidth ? mediaSize : screenWidth,
      alignment: Alignment.center,
      child: Column(
        children: [
          Text.rich(TextSpan(
              style: AppTextstyles(
                      font: "Roboto",
                      fontSize: 14,
                      lightThemeTextColor: AppThemes.primaryColorDark)
                  .customTextLightTheme(),
              children: [
                TextSpan(
                  text: "Saya menyetujui ",
                ),
                TextSpan(
                    text: "syarat & ketentuan ",
                    style: AppTextstyles(
                            font: "Roboto",
                            fontSize: 14,
                            lightThemeTextColor: AppThemes.accentTextLight)
                        .customTextLightTheme(),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                TextSpan(
                  text: "yang berlaku",
                ),
              ])),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () async {
              print('Nama: $nama' +
                  '\nKontak: $kontak' +
                  '\nPesan: $pesan' +
                  '\nNominal: ${int.parse(nominal!.replaceAll(RegExp(','), ''))}');
              try {
                DbServices()
                    .postDonateData(
                        nama: nama!,
                        nominal:
                            int.parse(nominal!.replaceAll(RegExp(','), '')),
                        kontak: kontak!,
                        pesan: pesan!,
                        id: widget.data.id!)
                    .then((value) async {
                  SnapPaymentModel result =
                      SnapPaymentModel.fromRawJson(value!);
                  if (!await launchUrl(Uri.parse(result.redirectUrl!))) {
                    throw Exception('Could not launch ${result.redirectUrl}');
                  }
                });
              } catch (e) {
                print(e);
              }
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                width: screenWidth,
                child: const Text("KIRIM DONASI")),
          ),
        ],
      ),
    );
  }

  List<Widget> _formBuilder() {
    return [
      Text(
        "Nominal Infaq",
        style: AppTextstyles().h3Light(),
      ),
      TextField(
        controller: _nominalController,
        inputFormatters: [
          CurrencyInputFormatter(),
        ],
        keyboardType:
            const TextInputType.numberWithOptions(signed: true, decimal: false),
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              //Outline border type for TextFeild
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.redAccent,
                width: 3,
              )),
          hintText: "Nominal Donasi",
        ),
        onChanged: (val) {
          setState(() {
            nominal = val;
          });
        },
      ),
      ElevatedButton(
          onPressed: () {
            setState(() {
              nominal = 2000.toString();
              print(nominal);
              _nominalController.text = "2,000";
            });
          },
          style: ButtonStyle(
              backgroundColor: getColor(
                  AppThemes.primaryColorLight, AppThemes.primaryAccentDark),
              foregroundColor: getColor(
                  AppThemes.primaryAccentDark, AppThemes.primaryColorLight),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                "2.000",
                style: AppTextstyles(
                        font: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                    .customTextDarkTheme(),
              ))),
      ElevatedButton(
          onPressed: () {
            setState(() {
              nominal = 5000.toString();
              print(nominal);
              _nominalController.text = "5,000";
            });
          },
          style: ButtonStyle(
              backgroundColor: getColor(
                  AppThemes.primaryColorLight, AppThemes.primaryAccentDark),
              foregroundColor: getColor(
                  AppThemes.primaryAccentDark, AppThemes.primaryColorLight),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                "5.000",
                style: AppTextstyles(
                        font: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                    .customTextDarkTheme(),
              ))),
      ElevatedButton(
          onPressed: () {
            setState(() {
              nominal = 10000.toString();
              print(nominal);
              _nominalController.text = "10,000";
            });
          },
          style: ButtonStyle(
              backgroundColor: getColor(
                  AppThemes.primaryColorLight, AppThemes.primaryAccentDark),
              foregroundColor: getColor(
                  AppThemes.primaryAccentDark, AppThemes.primaryColorLight),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                "10.000",
                style: AppTextstyles(
                        font: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                    .customTextDarkTheme(),
              ))),
      ElevatedButton(
          onPressed: () {
            setState(() {
              nominal = 25000.toString();
              print(nominal);
              _nominalController.text = "25,000";
            });
          },
          style: ButtonStyle(
              backgroundColor: getColor(
                  AppThemes.primaryColorLight, AppThemes.primaryAccentDark),
              foregroundColor: getColor(
                  AppThemes.primaryAccentDark, AppThemes.primaryColorLight),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                "25.000",
                style: AppTextstyles(
                        font: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                    .customTextDarkTheme(),
              ))),
      TextField(
        controller: _namaController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              //Outline border type for TextFeild
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.redAccent,
                width: 3,
              )),
          hintText: "Nama",
        ),
        onChanged: (val) {
          setState(() {
            nama = val;
          });
        },
      ),
      TextField(
        controller: _kontakController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              //Outline border type for TextFeild
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.redAccent,
                width: 3,
              )),
          hintText: "Nomor ponsel / email",
        ),
        onChanged: (val) {
          setState(() {
            kontak = val;
          });
        },
      ),
      TextField(
        controller: _pesanController,
        keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              //Outline border type for TextFeild
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.redAccent,
                width: 3,
              )),
          hintText: "Pesan / Do'a",
        ),
        maxLines: 3,
        maxLength: 100,
        onChanged: (val) {
          setState(() {
            pesan = val;
          });
        },
      ),
      FDottedLine(
        color: AppThemes.primaryColorDark,
        strokeWidth: 2.0,
        dottedLength: 8.0,
        space: 3.0,
        corner: FDottedLineCorner.all(6.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            AppStrings(en: false).HADITH_INFAQ,
            textAlign: TextAlign.center,
            style: AppTextstyles(
                    font: "Roboto", fontSize: 14, fontStyle: FontStyle.italic)
                .customTextDarkTheme(),
          ),
        ),
      ),
      SizedBox()
    ];
  }

  MaterialStateProperty<Color>? getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  final validationRegex = RegExp(r'^[\d,]*\.?\d*$');
  final replaceRegex = RegExp(r'[^\d\.]+');
  static const fractionalDigits = 2;
  static const thousandSeparator = ',';
  static const decimalSeparator = '.';

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (!validationRegex.hasMatch(newValue.text)) {
      return oldValue;
    }

    final newValueNumber = newValue.text.replaceAll(replaceRegex, '');

    var formattedText = newValueNumber;

    /// Add thousand separators.
    var index = newValueNumber.contains(decimalSeparator)
        ? newValueNumber.indexOf(decimalSeparator)
        : newValueNumber.length;

    while (index > 0) {
      index -= 3;

      if (index > 0) {
        formattedText = formattedText.substring(0, index) +
            thousandSeparator +
            formattedText.substring(index, formattedText.length);
      }
    }

    /// Limit the number of decimal digits.
    final decimalIndex = formattedText.indexOf(decimalSeparator);
    var removedDecimalDigits = 0;

    if (decimalIndex != -1) {
      var decimalText = formattedText.substring(decimalIndex + 1);

      if (decimalText.isNotEmpty && decimalText.length > fractionalDigits) {
        removedDecimalDigits = decimalText.length - fractionalDigits;
        decimalText = decimalText.substring(0, fractionalDigits);
        formattedText = formattedText.substring(0, decimalIndex) +
            decimalSeparator +
            decimalText;
      }
    }

    /// Check whether the text is unmodified.
    if (oldValue.text == formattedText) {
      return oldValue;
    }

    /// Handle moving cursor.
    final initialNumberOfPrecedingSeparators =
        oldValue.text.characters.where((e) => e == thousandSeparator).length;
    final newNumberOfPrecedingSeparators =
        formattedText.characters.where((e) => e == thousandSeparator).length;
    final additionalOffset =
        newNumberOfPrecedingSeparators - initialNumberOfPrecedingSeparators;

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(
          offset: newValue.selection.baseOffset +
              additionalOffset -
              removedDecimalDigits),
    );
  }
}
