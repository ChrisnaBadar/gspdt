import 'package:flutter/material.dart';
import 'package:gspdt/pages/underConstruct/underconstruction.dart';

class KonstruksiPage extends StatefulWidget {
  const KonstruksiPage({super.key});

  @override
  State<KonstruksiPage> createState() => _KonstruksiPageState();
}

class _KonstruksiPageState extends State<KonstruksiPage> {
  @override
  Widget build(BuildContext context) {
    return const Underconstruction();
  }
}
