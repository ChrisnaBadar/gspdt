import 'package:gspdt/constants/constants.dart';

/*
 *1. If the resolution is above and equal to desktop the row will go 
 * 
 */

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

int calculateFlex(double resolution) {
  if (resolution <= 500) {
    return 100;
  } else if (resolution >= 1280) {
    return 5;
  } else {
    double fraction = (resolution - 500) / (1280 - 500);
    int result = (95 - fraction * 95 + 5).round();
    return result;
  }
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    List bodyCacc = [4, 4, 2, 2, 4, 2, 2, 8];
    List bodyMacc = [4, 1, 1, 1, 1, 1, 1, 4];
    List headerCacc = [9, 9];
    List headerMacc = [1, 8];
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: calculateFlex(screenWidth),
            child: Column(
              children: [
                StaggeredGrid.count(
                  crossAxisCount: 9,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  children: List.generate(
                      1,
                      (index) => StaggeredGridTile.count(
                          crossAxisCellCount: headerCacc[index],
                          mainAxisCellCount: headerMacc[index],
                          child: Container(
                            decoration: BoxDecoration(border: Border.all()),
                          ))),
                ),
                StaggeredGrid.count(
                  crossAxisCount: 8,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: List.generate(
                      7,
                      (index) => StaggeredGridTile.count(
                          crossAxisCellCount: bodyCacc[index],
                          mainAxisCellCount: bodyMacc[index],
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black)),
                          ))),
                ),
              ],
            ),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}
