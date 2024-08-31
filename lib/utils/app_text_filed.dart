import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFiled extends StatelessWidget {
  const AppTextFiled({
    super.key,
    required this.label,
    required this.hint,
    this.subLabel,
    this.controller,
    this.focusNode,
    this.inputFormatters,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.onTap,
    this.onChanged,
    this.readOnly = false,
    this.enabled = true,
    this.fillColor,
    this.maxLines = 1,
    this.enableSuffixPadding = true,
    this.labelSpace,
  });

  final String label, hint;
  final String? subLabel;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon, suffixIcon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool isPassword;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final bool readOnly, enabled;
  final Color? fillColor;
  final int maxLines;
  final bool enableSuffixPadding;

  final double? labelSpace;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: labelSpace ?? 12),
        TextFormField(
          maxLines: maxLines,
          controller: controller,
          focusNode: focusNode,
          validator: validator,
          inputFormatters: inputFormatters,
          cursorColor: Theme.of(context).primaryColor,
          obscureText: isPassword,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          keyboardType: keyboardType,
          onTap: onTap,
          onChanged: onChanged,
          readOnly: readOnly,
          enabled: enabled,
          decoration: InputDecoration(
            filled: true,
            fillColor: fillColor ?? Colors.white,
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
            errorStyle: const TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
            errorMaxLines: 2,
            prefixIcon: prefixIcon,
            suffixIcon: Padding(
              padding: enableSuffixPadding
                  ? const EdgeInsetsDirectional.only(end: 5)
                  : EdgeInsets.zero,
              child: suffixIcon,
            ),
            suffixIconConstraints: const BoxConstraints(),
            prefixIconConstraints: const BoxConstraints(),
            border: _border(context),
            enabledBorder: _border(context),
            focusedBorder: _border(context),
            errorBorder: _border(context),
            focusedErrorBorder: _border(context),
            disabledBorder: _border(context),
          ),
        ),
        if (subLabel != null) const SizedBox(height: 5),
        if (subLabel != null)
          Text(
            subLabel!,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
      ],
    );
  }

  OutlineInputBorder _border(context) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Theme.of(context).primaryColor),
      );
}
