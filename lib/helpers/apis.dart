import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yatri_restro/screens/auth/signin_screen.dart';
import '../models/all_order_model.dart';

class ApiHelper {
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
//

// Future<List<AllOrderModel>> getAllOrders() async {
//   String? token = await getToken();

//   if (token == null) {
//     print('Token is null. Cannot proceed with the request.');
//     return [];
//   }

//   try {
//     print('Token: $token');
//     final headers = {
//       'Authorization': 'Bearer $token',
//       'Content-Type': 'application/json',
//     };
//     print('Headers: $headers');

//     final response = await http.get(
//         Uri.parse('https://api.yatrirestro.com/api/v1/partner/orders'),
//         headers: headers);

//     print('Response status: ${response.statusCode}');
//     print('Response body: ${response.body}');

//     if (response.statusCode == 200) {
//       final responseBody = jsonDecode(response.body);
//       log(response.body);

//       final List<AllOrderModel> list = responseBody
//           .map<AllOrderModel>((ship) => AllOrderModel.fromJson(ship))
//           .toList();
//       return list;
//     } else {
//       print('Failed to load orders. Status code: ${response.statusCode}');
//       return [];
//     }
//   } catch (e) {
//     print(e);
//     return [];
//   }
// }
 Future<List<AllOrderModel>> getAllOrders() async {
  String? token = await getToken();
  print('Token: $token');

  if (token == null) {
    print('Token is null. Cannot proceed with the request.');
    return [];
  }
try {
  
  String url = 'https://api.yatrirestro.com/api/v1/partner/orders';
  print('Request URL: $url');
  final response = await http.get(Uri.parse(url), headers: {
    'Authorization': 'Bearer $token',
    'Content-Type': 'application/json',
  });

  if (response.statusCode == 200) {
    final body = jsonDecode(response.body);

    // Check the structure of the response
    // print('Response body: $body');

    // Assuming the response contains a field 'orders' that holds the list
    final List<dynamic> ordersJson = body['orders'];
    final List<AllOrderModel> orders = ordersJson.map((e) => AllOrderModel.fromJson(e)).toList();
    print(orders);
    return orders;

  } else {
    print('Failed to fetch orders');
    throw Exception('Error fetching orders');
  }
  
} catch (e) {
  print(e);
  return [];
}
}


  //
  //
  static Future<void> logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLoggedIn', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }
}
