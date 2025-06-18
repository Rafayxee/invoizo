import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final TextAlign? textAlign;
  final TextEditingController? controller;
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
      this.controller,
      this.inputFormatters,
      this.maxLines,
      this.onFieldSubmitted,
      this.textInputAction,
      this.alignLabelWithHint,
      this.prefixIcon,
      this.labelText,
      this.keyboard,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.start,
      controller: controller,
      cursorColor: const Color.fromRGBO(61, 60, 60, 1),
      decoration: InputDecoration(
          fillColor: const Color(0xFFF2F0E8),
          filled: true,
          prefixIcon: prefixIcon,
          alignLabelWithHint: alignLabelWithHint,
          labelText: title,
          labelStyle: GoogleFonts.poppins(color: Colors.black),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.inter(
            fontSize: 16.sp,
            color: const Color(0xFF9C854A),
          )),
    );
  }
}
