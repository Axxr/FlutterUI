import 'package:fltterapi/widget/circle.dart';
import 'package:fltterapi/widget/icon_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double pinkSize = size.width * 0.85;
    final double orangekSize = size.width * 0.63;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
            top: -(pinkSize) * 0.35,
            right: -(pinkSize) * 0.25,
            child: Circle(
              size: pinkSize,
              colors: const [
                Color.fromARGB(255, 255, 81, 188),
                Color.fromARGB(255, 255, 31, 87),
              ],
            ),
          ),
          Positioned(
            top: -(orangekSize) * 0.5,
            left: -(orangekSize) * 0.2,
            child: Circle(
              size: orangekSize,
              colors: const [
                Colors.orange,
                Colors.deepOrange,
              ],
            ),
          ),
          Positioned(
            top: pinkSize * 0.4,
            child: IconContainer(
              size: size.width * 0.22,
            ),
          )
        ]),
      ),
    );
  }
}
