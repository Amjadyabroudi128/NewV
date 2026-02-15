import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  final double? myHeight;
  final double? myWidth;
  final String myImage;
  const MyImage({super.key, this.myHeight, this.myWidth, required this.myImage});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      myImage,
      height: 150,
      width: 150,
    );
  }
}
