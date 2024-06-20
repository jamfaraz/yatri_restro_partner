
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Color selectedColor;

  const TabBarItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.selectedColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height * .044,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF08445C) : selectedColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.kameron(
              textStyle: TextStyle(
                color: isSelected ? Colors.white : Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ));
  }
}
