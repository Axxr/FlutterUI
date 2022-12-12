import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keboardType;
  final bool obscureText, borderEnable;
  final double fontSize;
  final void Function(String text) onChange;
  final String? Function(String? text) validator;
  const InputText({
    Key? key,
    this.label = '',
    this.keboardType = TextInputType.text,
    this.obscureText = false,
    this.borderEnable = true,
    this.fontSize = 15,
    required this.onChange,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keboardType,
      obscureText: obscureText,
      onChanged: onChange,
      validator: validator,
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
        labelText: label,
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        enabledBorder: borderEnable
            ? const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black12))
            : InputBorder.none,
        labelStyle: const TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
