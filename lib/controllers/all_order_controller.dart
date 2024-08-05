import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yatri_restro/models/all_order_model.dart';
import 'package:http/http.dart' as http;

import '../helpers/apis.dart';

class AllOrderController extends GetxController {
  // List<AllOrderModel> allOrders = [];
  // final ApiHelper _apiHelper = ApiHelper();

  // Future<void> getOrders() async {
  //   isLoading.value = true;
  //   allOrders = (await _apiHelper.getAllOrders()) as List<AllOrderModel>;
  //   isLoading.value = false;
  // }

  RxBool isLoading = false.obs;
  var orders = <AllOrderModel>[].obs;
  var errorMessage = ''.obs;
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  @override
  void onInit() {
    super.onInit();
    // fetchOrders();
  }

// Future<void> fetchOrders() async {

//    String? token = await getToken();

//   if (token == null) {
//     print('Token is null. Cannot proceed with the request.');
//   }
//   try {
//     isLoading(true);
//     var response = await http.get(Uri.parse('https://api.yatrirestro.com/api/v1/partner/orders'), headers: {
//       'Authorization': 'Bearer $token',
//       'Content-Type': 'application/json',
//     });

//     if (response.statusCode == 200) {
//       var jsonData = json.decode(response.body);
//       if (jsonData != null && jsonData is Map<String, dynamic> && jsonData.containsKey('orders')) {
//         var ordersJson = jsonData['orders'];
//         if (ordersJson is List) {
//           orders.value = ordersJson.map((order) => AllOrderModel.fromJson(order)).toList();
//         } else {
//           errorMessage.value = 'Unexpected JSON format: orders is not a list';
//         }
//       } else {
//         errorMessage.value = 'Unexpected JSON format: missing orders key';
//       }
//     } else {
//       errorMessage.value = 'Failed to load orders: ${response.statusCode}';
//     }
//   } catch (e) {
//     errorMessage.value = 'An error occurred: $e';
//   } finally {
//     isLoading(false);
//   }
// }

//   Future<void> fetchOrders() async {
//     String? token = await getToken();

//     if (token == null) {
//       print('Token is null. Cannot proceed with the request.');
//     }
//    try {
//     isLoading.value = true;
//     print('Using token: $token'); // Debug: Print the token

//     var response = await http.get(
//       Uri.parse('https://api.yatrirestro.com/api/v1/partner/orders'),
//       headers: {
//         'Authorization': 'Bearer $token',
//         'Content-Type': 'application/json',
//       },
//     );

//     print('Response status: ${response.statusCode}'); // Debug: Print status code
//     print('Response body: ${response.body}'); // Debug: Print response body

//     if (response.statusCode == 200) {
//       var jsonData = json.decode(response.body);
//       print(jsonData); // Debug: Print jsonData to verify the structure

//       if (jsonData['orders'] is List) {
//         var ordersJson = jsonData['orders'] as List;
//         orders.value =
//             ordersJson.map((order) => AllOrderModel.fromMap(order)).toList();
//       } else {
//         errorMessage.value = 'Invalid data format';
//       }
//     } else if (response.statusCode == 401) {
//       errorMessage.value = 'Unauthorized access. Check the token.';
//     } else {
//       errorMessage.value = 'Failed to load orders';
//     }
//   } catch (e) {
//     errorMessage.value = 'An error occurred';
//     print(e); // Debug: Print the error
//   } finally {
//     isLoading.value = false;
//   }
// }
}
