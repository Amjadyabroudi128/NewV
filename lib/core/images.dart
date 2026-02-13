import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  final double? myHeight;
  final double? myWidth;
  final String? myImage;
  const MyImage({super.key, this.myHeight, this.myWidth, this.myImage});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      myImage!,
      height: myHeight,
      width: myWidth,
    );
  }
}
