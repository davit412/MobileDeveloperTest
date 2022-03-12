import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String etiqueta;
  // ignore: non_constant_identifier_names
  final TextInputType TextPassword;
  final bool obscureText, borderEnable;
  final double fontSize;
  final void Function(String text)? onChanged1;
  final String? Function(String?)? validation;

  const InputField({
    Key? key,
    this.etiqueta = '',
    // ignore: non_constant_identifier_names
    this.TextPassword = TextInputType.text,
    this.obscureText = false,
    this.borderEnable = true,
    this.fontSize = 15,
    this.onChanged1,
    this.validation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return FormField<String>(builder: (state) {
    return TextFormField(
      keyboardType: TextPassword,
      obscureText: obscureText,
      onChanged: onChanged1,
      validator: validation,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: TextStyle(
        fontSize: fontSize,
      ),
      decoration: InputDecoration(
          labelText: etiqueta,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: borderEnable
              ? const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black38,
                  ),
                )
              : InputBorder.none,
          labelStyle: const TextStyle(color: Colors.black45)),
    );
    // } );
  }
}
