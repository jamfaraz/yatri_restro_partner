import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;

  const PrimaryTextField({
    super.key,
    required this.controller,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.016,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            color: Colors.black45,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: text,
        hintStyle: GoogleFonts.kameron(
          textStyle: const TextStyle(
            color: Color(0xFF828A89),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
      ),
    );
  }
}
