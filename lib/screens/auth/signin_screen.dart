import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yatri_restro/screens/dashboard/dashboard.dart';
import 'package:yatri_restro/widgets/primary_textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailControlle = TextEditingController();
  TextEditingController passwordControlle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E455D),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * .03,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: Get.height * .21,
                  width: Get.width * .32,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Image.asset(
                    'assets/splash.png',
                  ),
                ),
              ),
              Image.asset(
                    'assets/login.jpg',
                  ),
              Text(
                'Welcome to Yatri Restro Food Service',
                textAlign: TextAlign.center,
                style: GoogleFonts.kameron(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              PrimaryTextField(
                  controller: emailControlle, text: 'Enter your email'),
              const SizedBox(
                height: 14,
              ),
              PrimaryTextField(controller: passwordControlle, text: 'Password'),
              const SizedBox(
                height: 34,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const Dashboard());
                },
                child: Container(
                  width: Get.width * .38,
                  height: Get.height * .05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(44),
                    color: const Color(0xFFB65426),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: GoogleFonts.kameron(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(),
              Text(
                'Forgot Password',
                style: GoogleFonts.kameron(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
