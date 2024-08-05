
// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

// import '../models/all_order_model.dart';
// import '../screens/dashboard/order_detail_screen.dart';
// import '../widgets/forward_button.dart';

// class Myclass extends StatefulWidget {
//   const Myclass({super.key});

//   @override
//   State<Myclass> createState() => _MyclassState();
// }

// class _MyclassState extends State<Myclass> {
  

  
//    Future<String?> getToken() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getString('token');
//   }

//  Future<AllOrderModel> getAllOrders()async{
//        String? token = await getToken();
//        print(token);

//      if (token == null) {
//     print('Token is null. Cannot proceed with the request.');
//   }
//     String url = 'https://api.yatrirestro.com/api/v1/partner/orders';
//     print(url);
//     final response = await http.get(Uri.parse(url),
    
//       headers: {
//             'Authorization': 'Bearer $token',
//             'Content-Type': 'application/json',
//           });

//       log(response.body);
//     if(response.statusCode == 200){
//       final body = jsonDecode(response.body);
//       return AllOrderModel.fromJson(body);
//     }
//     throw Exception('Error');
//   }
// bool isLoading=false;
//   List<AllOrderModel> allOrders = [];

//   Future<void> getOrders() async {
//     isLoading= true;
//     allOrders = (await getAllOrders()) as List<AllOrderModel>;
//     isLoading= false;
//   }

// @override
//   void initState() {
//     getOrders();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(

//       body: Column(
//         children: [
//             isLoading   ? const Center(child: CircularProgressIndicator())
//                     : allOrders.isEmpty
//                         ? Center(
//                             child: Text(
//                             'No orders found',
//                             style: GoogleFonts.kameron(
//                                 textStyle: const TextStyle(fontSize: 18)),
//                           ))
//                         : ListView.builder(
//                             padding: const EdgeInsets.only(top: 6),
//                             shrinkWrap: true,
//                             physics: const BouncingScrollPhysics(),
//                             itemCount: allOrders.length,
//                             itemBuilder: (context, index) {
//                               final order =
//                                   allOrders[index];

//                               return Column(
//                                 children: [
//                                   Container(
//                                     margin:
//                                         const EdgeInsets.symmetric(vertical: 6),
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 8, vertical: 12),
//                                     decoration: ShapeDecoration(
//                                       color: const Color(0xFFEFEFEF),
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(4)),
//                                     ),
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Container(
//                                               height: Get.height * .021,
//                                               // width: Get.width*.4,
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 4),
//                                               decoration: ShapeDecoration(
//                                                 color: const Color(0xFF08445C),
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             3)),
//                                               ),
//                                               child: Text(
//                                                 'Order id- ${order.orderId}',
//                                                 style: GoogleFonts.kameron(
//                                                   textStyle: const TextStyle(
//                                                     color: Colors.white,
//                                                     fontSize: 13,
//                                                     fontWeight: FontWeight.w700,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                             Column(
//                                               children: [
//                                                 Text(
//                                                   'Arrival time',
//                                                   style: GoogleFonts.kameron(
//                                                     textStyle: const TextStyle(
//                                                       color: Colors.black,
//                                                       fontSize: 12,
//                                                       fontWeight:
//                                                           FontWeight.w400,
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Text(
//                                                   order.deliveryDetails?.berth
//                                                           .toString() ??
//                                                       '',
//                                                   style: GoogleFonts.kameron(
//                                                     textStyle: const TextStyle(
//                                                       color: Colors.black,
//                                                       fontSize: 10,
//                                                       fontWeight:
//                                                           FontWeight.w400,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             )
//                                           ],
//                                         ),
//                                         Row(
//                                           children: [
//                                             Text(
//                                               'Train no/Name-    ',
//                                               style: GoogleFonts.kameron(
//                                                 textStyle: const TextStyle(
//                                                   color: Colors.black,
//                                                   fontSize: 13,
//                                                   fontWeight: FontWeight.w400,
//                                                 ),
//                                               ),
//                                             ),
//                                             Text(
//                                               order.deliveryDetails!.trainName
//                                                   .toString(),
//                                               style: GoogleFonts.kameron(
//                                                 textStyle: const TextStyle(
//                                                   color: Colors.black,
//                                                   fontSize: 12,
//                                                   fontWeight: FontWeight.w400,
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Row(
//                                               children: [
//                                                 Text(
//                                                   'Total amount-    ',
//                                                   style: GoogleFonts.kameron(
//                                                     textStyle: const TextStyle(
//                                                       color: Colors.black,
//                                                       fontSize: 13,
//                                                       fontWeight:
//                                                           FontWeight.w400,
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Text(
//                                                   order.totalAmount.toString(),
//                                                   style: GoogleFonts.kameron(
//                                                     textStyle: const TextStyle(
//                                                       color: Colors.black,
//                                                       fontSize: 12,
//                                                       fontWeight:
//                                                           FontWeight.w400,
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 const SizedBox(
//                                                   width: 14,
//                                                 ),
//                                                 Container(
//                                                   width: Get.width * .16,
//                                                   height: Get.height * .024,
//                                                   decoration: ShapeDecoration(
//                                                     color:
//                                                         const Color(0xFFB65426),
//                                                     shape:
//                                                         RoundedRectangleBorder(
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                                         7)),
//                                                   ),
//                                                   child: Center(
//                                                     child: Text(
//                                                       'COD',
//                                                       style:
//                                                           GoogleFonts.kameron(
//                                                               textStyle:
//                                                                   const TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 13,
//                                                         fontWeight:
//                                                             FontWeight.w700,
//                                                       )),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             ForwardButton(
//                                               onTap: () {
//                                                 Get.to(() =>
//                                                     const OrderDetailScreen());
//                                               },
//                                             )
//                                           ],
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               );
//                             },
//                           ),
//         ],
//       ),
//     );
//   }
// }