import 'package:gspdt/constants/constants.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  const CustomButton({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(), onPressed: onPressed, child: child);
  }
}
