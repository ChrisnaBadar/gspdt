import 'package:flutter/material.dart';

class YaumiPage extends StatefulWidget {
  const YaumiPage({super.key});

  @override
  State<YaumiPage> createState() => _YaumiPageState();
}

class _YaumiPageState extends State<YaumiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('YAUMI'),
      ),
    );
  }
}
