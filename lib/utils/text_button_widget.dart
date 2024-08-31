import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.title,
    required this.onClick,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
    this.decoration,
    this.minimumSize,
    this.tapTargetSize,
    this.height,
    this.fontFamily,
  });

  final String title;
  final VoidCallback onClick;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final MaterialStateProperty<Size>? minimumSize;
  final MaterialTapTargetSize? tapTargetSize;
  final double? height;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        minimumSize: minimumSize,
        tapTargetSize: tapTargetSize,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: fontColor ?? Theme.of(context).primaryColor,
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight ?? FontWeight.bold,
          decoration: decoration,
          height: height,
        ),
      ),
    );
  }
}