import 'package:flutter/material.dart';

class AppGap extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;

  const AppGap({this.height = 0, this.width = 0, super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width);
  }
}
