import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.onClick,
    this.title,
    this.child,
    this.color,
    this.borderColor,
    this.borderWidth,
    this.radius,
    this.minimumSize,
    this.fixedSize,
    this.elevation,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
    this.fontHeight,
    this.padding,
    this.contentPadding,
    this.tapTargetSize,
  });

  final VoidCallback onClick;
  final String? title;
  final Widget? child;
  final Color? color;
  final double? radius;
  final Color? borderColor;
  final double? borderWidth;
  final Size? minimumSize, fixedSize;
  final double? elevation;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? fontHeight;
  final EdgeInsetsGeometry? padding, contentPadding;
  final MaterialTapTargetSize? tapTargetSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ButtonStyle(
        tapTargetSize: tapTargetSize,
        minimumSize: minimumSize != null
            ? MaterialStateProperty.all<Size>(minimumSize!)
            : null,
        fixedSize: fixedSize != null
            ? MaterialStateProperty.all<Size>(fixedSize!)
            : null,
        elevation: MaterialStateProperty.all<double?>(elevation ?? 0),
        shadowColor:
            MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
        backgroundColor: MaterialStateProperty.all<Color>(
            color ?? Theme.of(context).primaryColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            side: BorderSide(
                color: borderColor ?? (color ?? Theme.of(context).primaryColor),
                width: borderWidth ?? 1),
            borderRadius: BorderRadius.circular(radius ?? 0),
          ),
        ),
        padding: MaterialStatePropertyAll(padding ?? EdgeInsets.zero),
      ),
      child: title != null
          ? Padding(
              padding: contentPadding ?? EdgeInsets.zero,
              child: Text(
                title!,
                style: TextStyle(
                  color: fontColor ?? Colors.white,
                  fontSize: fontSize ?? 16,
                  fontWeight: fontWeight ?? FontWeight.bold,
                  height: fontHeight,
                ),
              ),
            )
          : Padding(
              padding: contentPadding ?? EdgeInsets.zero,
              child: child,
            ),
    );
  }
}
