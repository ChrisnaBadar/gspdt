import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Underconstruction extends StatefulWidget {
  const Underconstruction({super.key});

  @override
  State<Underconstruction> createState() => _UnderconstructionState();
}

class _UnderconstructionState extends State<Underconstruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/painting.png'),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Halaman ini masih dalam tahap pembangunan.',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[800])),
            )
          ],
        ),
      ),
    );
  }
}
