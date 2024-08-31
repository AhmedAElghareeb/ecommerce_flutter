import 'package:flutter/material.dart';

import 'elevated_button_widget.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget(
      {super.key,
      required this.title,
      required this.onClick,
      this.height,
      this.width,
      this.color});

  final String title;
  final VoidCallback onClick;
  final double? height, width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonWidget(
      onClick: onClick,
      title: title,
      color: color ?? Theme.of(context).primaryColor,
      minimumSize: Size(width ?? double.infinity, height ?? 50),
      radius: 6,
    );
  }
}
