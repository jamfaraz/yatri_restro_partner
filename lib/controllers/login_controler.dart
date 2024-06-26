import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yatri_restro/screens/dashboard/dashboard.dart';
import 'package:http/http.dart' as http;

class LoginControler extends GetxController {
  RxBool isLoading = false.obs;

  // Future<void> log(
  //   String email,
  //   String password,
  // ) async {
  //   try {
  //     isLoading.value = true;
  //     await ApiHelper.logInService(email: email, password: password);
  //     Get.snackbar(
  //       'Success',
  //       'Login Successful',
  //       backgroundColor: Colors.green,
  //       colorText: Colors.white,
  //     );
  //     isLoading.value = false;
  //     Get.offAll(const Dashboard());
  //   } catch (e) {
  //     isLoading.value = false;

  //     Get.snackbar(
  //       'Error',
  //       'Failed to login',
  //       backgroundColor: Colors.green,
  //       colorText: Colors.white,
  //     );
  //   }
  // }

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
        final Map<String, dynamic> responseBody = jsonDecode(response.body);

        // LoginModel responseModel = LoginModel.fromJson(responseBody);
        Get.snackbar(
          'Success',
          'login successfully',
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );

        Get.to(() => Dashboard());
        // log(responseModel.toString());
        // return responseModel;
        isLoading.value = false;
      } else {
        isLoading.value = false;

        throw 'Failed to log in';
      }
    } catch (e) {
      // Get.snackbar('Error', e.toString());
      isLoading.value = false;
      Get.snackbar('Error', 'Invalid credentials',   backgroundColor: Colors.green,
          colorText: Colors.white,);

      log('Error: $e');
      rethrow;
    }
  }
}
