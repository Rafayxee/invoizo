import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final bool? alignLabelWithHint;
  final Widget? prefixIcon;
  final List<Widget>? labelText;
  final TextInputType? keyboard;
  const KTextField(
      {super.key,
      this.title,
      this.hintText,
      required this.controller,
      this.inputFormatters,
      this.maxLines,
      this.onFieldSubmitted,
      this.textInputAction,
      this.alignLabelWithHint,
      this.prefixIcon,
      this.labelText,
      this.keyboard});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard,
      showCursor: false,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      controller: controller,
      cursorColor: const Color.fromRGBO(61, 60, 60, 1),
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          alignLabelWithHint: alignLabelWithHint,
          labelText: title,
          labelStyle: GoogleFonts.poppins(color: Colors.black),
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color: Color.fromRGBO(64, 60, 60, 1),
            ),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            color: Colors.grey,
          )),
    );
  }
}
