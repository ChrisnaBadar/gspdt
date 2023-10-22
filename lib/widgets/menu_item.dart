import 'package:gspdt/constants/constants.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const MenuItem({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
        ));
  }
}
