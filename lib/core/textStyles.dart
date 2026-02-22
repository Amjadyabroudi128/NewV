import 'package:flutter/material.dart';

import 'myColors.dart';
class myTstyles {
  static TextStyle noMessage = TextStyle(color: MyColors.noMessage);
  static TextStyle yes(BuildContext context, Color color, double fontSize, FontWeight fontWeight){
    return TextStyle(
        color: color,
        fontSize: fontSize
    );
  }
}