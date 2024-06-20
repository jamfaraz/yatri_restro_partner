import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForwardButton extends StatelessWidget {
  final VoidCallback onTap;
  const ForwardButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Get.width * .062,
        height: Get.height * .028,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: OvalBorder(),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: Color(0xff0E455D),
        ),
      ),
    );
  }
}
