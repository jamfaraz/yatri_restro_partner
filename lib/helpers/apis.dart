import 'dart:convert';

import 'package:http/http.dart' as http;


class ApiHelper {
  static Future<bool> login(
      {required String email, required String password}) async {
    final response = await http.post(
      Uri.parse('https://api.yatrirestro.com/api/v1/admin/app/login'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // Handle successful response
      return true;
    } else {
      // Handle error response
      throw Exception('Failed to login');
    }
  }

  static Future<void> signin(String email, String password) async {
    final response = await http.post(
      Uri.parse('https://api.yatrirestro.com/api/v1/admin/app/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );
  }

  // Future<List<Ship>> getOrders() async {
  //   try {
  //     final response =
  //         await http.get(Uri.parse('$baseApiUrl/GetCruiseShips?dtDate=$date'));

  //     final decodedResponse = jsonDecode(response.body);
  //     log(response.body);
  //     final List<Ship> list =
  //         decodedResponse.map<Ship>((ship) => Ship.fromMap(ship)).toList();
  //     return list;
  //   } catch (e) {
  //     print(e);
  //     return [];
  //   }
  // }

  static Future<bool> loginwithEmail(String email, String password) async {
    final url = Uri.parse('https://api.yatrirestro.com/api/v1/admin/app/login');
    final response = await http.post(
      url,
      // headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // Assuming the API returns a success field to indicate successful login
      return data['success'];
    } else {
      throw Exception('Failed to login');
    }
  }

}
