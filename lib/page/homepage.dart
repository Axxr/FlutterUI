import 'package:fltterapi/utils/responsive.dart';
import 'package:fltterapi/widget/circle.dart';
import 'package:fltterapi/widget/icon_container.dart';
import 'package:fltterapi/widget/login_form.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double pinkSize = responsive.wp(85);
    final double orangekSize = responsive.wp(63);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
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
                  child: Column(
                    children: [
                      IconContainer(
                        size: responsive.wp(22),
                      ),
                      SizedBox(
                        height: responsive.dp(3),
                      ),
                      Text(
                        'Hola\nBienvenido de Nuevo!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: responsive.dp(1.7),
                        ),
                      )
                    ],
                  ),
                ),
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
