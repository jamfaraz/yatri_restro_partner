import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yatri_restro/screens/dashboard/dashboard.dart';
import 'package:http/http.dart' as http;

class LoginControler extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> logInService(
      {required String email, required String password}) async {
    try {
      isLoading.value = true;

      final response = await http.post(
        Uri.parse('https://api.yatrirestro.com/api/v1/admin/app/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email.trim(),
          'password': password.trim(),
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        SharedPreferences prefs = await SharedPreferences.getInstance();

        final token = data['token'];
        await prefs.setString('token', token);
        prefs.setBool('isLoggedIn', true);

        Get.snackbar(
          'Success',
          'login successfully',
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );

        Get.to(() => const Dashboard());

        isLoading.value = false;
      } else {
        isLoading.value = false;

        throw 'Failed to log in';
      }
    } catch (e) {
      // Get.snackbar('Error', e.toString());
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Invalid credentials',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      log('Error: $e');
      rethrow;
    }
  }
}
