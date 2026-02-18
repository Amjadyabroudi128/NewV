import 'package:flutter/material.dart';
class MyBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? color;
  const MyBtn({super.key, this.onPressed, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      child: child,
    );
  }
}
