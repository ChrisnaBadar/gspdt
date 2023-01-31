import 'package:flutter/material.dart';
import 'package:gspdt/home/widgets/header.dart';
import 'package:gspdt/home/widgets/navigation.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //navigation
          navigation(),

          //header
          header(mediaSize: MediaQuery.of(context).size),

          //body
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: CarouselSlider(
                items: List.generate(
                    4,
                    (index) => Container(
                          color: Colors.amber,
                          child: Center(
                            child: Text('$index'),
                          ),
                        )),
                options: CarouselOptions(scrollDirection: Axis.vertical)),
          )
        ],
      ),
    );
  }
}
