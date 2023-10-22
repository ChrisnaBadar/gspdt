import 'package:gspdt/constants/constants.dart';

class FullScreenRow extends StatelessWidget {
  final Widget child;

  const FullScreenRow({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = screenWidth / 16 * 9; // 16:9 aspect ratio
    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: child,
    );
  }
}
