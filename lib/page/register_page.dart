import 'package:fltterapi/utils/responsive.dart';
import 'package:fltterapi/widget/avatar_button.dart';
import 'package:fltterapi/widget/circle.dart';
import 'package:fltterapi/widget/icon_container.dart';
import 'package:fltterapi/widget/register_form.dart';
import 'package:flutter/cupertino.dart';
// import 'package:fltterapi/widget/login_form.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = 'register';
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double pinkSize = responsive.wp(88);
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
                  top: -(pinkSize) * 0.3,
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
                  top: -(orangekSize) * 0.45,
                  left: -(orangekSize) * 0.2,
                  child: Circle(
                    size: orangekSize,
                    colors: const [
                      Colors.yellow,
                      Colors.orange,
                    ],
                  ),
                ),
                Positioned(
                  top: pinkSize * 0.2,
                  child: Column(
                    children: [
                      Text(
                        'Hola!\nRegistrate para comenzar.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: responsive.dp(1.8),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: responsive.dp(5),
                      ),
                      AvatarButton(
                        imageSize: responsive.wp(25),
                      )
                    ],
                  ),
                ),
                RegisterForm(),
                Positioned(
                  left: 15,
                  top: 15,
                  child: SafeArea(
                    child: CupertinoButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.black26,
                      padding: EdgeInsets.all(10),
                      borderRadius: BorderRadius.circular(50),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
