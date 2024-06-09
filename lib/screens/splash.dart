// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yatri_restro/screens/dashboard/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const Dashboard());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: Get.height * .4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.01, -1.00),
                end: Alignment(-0.01, 1),
                colors: const [Color(0x72B65426), Color(0x00FBEFE6)],
              ),
            ),
          ),
          Image.asset(
            'assets/splash.png',
            height: Get.height * .14,
            width: Get.width * .5,
          ),
          Spacer(),
          RotatedBox(
            quarterTurns: -2,
            child: Container(
              width: Get.width,
              height: Get.height * .4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.01, -1.00),
                  end: Alignment(-0.01, 1),
                  colors: const [Color(0x72B65426), Color(0x00FBEFE6)],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RotatedBox(
                      quarterTurns: -2,
                      child: Image.asset(
                        'assets/text.png',
                       height: 48,
                      )),
                     
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
