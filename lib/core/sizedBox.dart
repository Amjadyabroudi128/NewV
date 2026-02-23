import 'package:flutter/material.dart';
class myBox extends StatelessWidget {
  final double? myHeight;
  final double? myWidth;
  const myBox({super.key, this.myHeight, this.myWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: myHeight,
      width: myWidth,
    );
  }
}
