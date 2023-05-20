import 'package:flutter/material.dart';

class CustomTextFrom extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isObscure;
  final FocusNode? node;
  final ValueChanged<String>? onChange;

  const CustomTextFrom({
    Key? key,
    required this.controller,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.isObscure = false,
    this.onChange,
    this.suffixIcon,
    this.node,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      suffixIcon: suffixIcon,
      label: Text(label),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
    ));
  }
}
