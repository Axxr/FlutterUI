import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AvatarButton extends StatelessWidget {
  final double imageSize;
  const AvatarButton({Key? key, this.imageSize = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black12,
                  offset: Offset(0, 20),
                ),
              ]),
          child: ClipOval(
            child: Image.network(
              'https://scontent.faqp4-2.fna.fbcdn.net/v/t39.30808-6/317082404_2732540816879840_5149867736771323636_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEDJML_6Dn1sp3IQ5MisFDKW8Ihe3nv_T1bwiF7ee_9PYOEd0Olldz25qUHbuoHYK1AkHZROgO1346wANs3Nwfw&_nc_ohc=i2rm1MEkgX0AX9srKMn&_nc_ht=scontent.faqp4-2.fna&oh=00_AfCHX6UUSwC86hHH6xsiIDOUOfLPUlbdupHPtmWH18yBbQ&oe=639C835F',
              width: imageSize,
              height: imageSize,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 5,
          child: CupertinoButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            borderRadius: BorderRadius.circular(50),
            child: Container(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                color: Colors.pinkAccent,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
