import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF08445C),
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xFF08445C),
                ),
              ),
            ),
            Text(
              'Order id- #123456789',
              style: GoogleFonts.kameron(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.30),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PNR',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Text(
                            '8436592375',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Delivery information',
                              style: GoogleFonts.kameron(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          Text('TRAIN /COACH/ BERTH',
                          overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.kameron(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          Text(
                            '12129- AZAD HIND\n EXP NGP,  B3/45',
                          overflow: TextOverflow.ellipsis,

                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Passenger details',
                              style: GoogleFonts.kameron(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          Text('Suman Kumar',
                              style: GoogleFonts.kameron(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Delivery Date/Time',
                              style: GoogleFonts.kameron(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          Text(
                            'March 15, 10:30 AM',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: Get.height * .05,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.30),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Get.height * .03,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF06BF19),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                    ),
                    child: Center(
                      child: Text('Order placed',
                          style: GoogleFonts.kameron(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                    ),
                  ),
                  Container(
                    width: Get.width * .14,
                    height: Get.height * .03,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFB65426),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Center(
                      child: Text('COD',
                          style: GoogleFonts.kameron(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customer Instructions',
                    style: GoogleFonts.kameron(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    'Please keep food less spicy',
                    style: GoogleFonts.kameron(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.30),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chole Bhature',
                            style: GoogleFonts.kameron(
                                textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            )),
                          ),
                          Text('2 pc Bhature,chole,salad.pickle',
                              style: GoogleFonts.kameron(
                                textStyle: const TextStyle(
                                  color: Color(0xFF8A8686),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                ),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/currency.svg'),
                          Text(
                            '110 x 1',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Punjabi Thali',
                            style: GoogleFonts.kameron(
                                textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            )),
                          ),
                          Text(
                              'Paneer Butter Masala,chana Masala,\nDal fry,Jeera rice,4pc butter roti, Papad,salad,sweet',
                              style: GoogleFonts.kameron(
                                textStyle: const TextStyle(
                                  color: Color(0xFF8A8686),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                ),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/currency.svg'),
                          Text(
                            '110 x 1',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub total',
                        style: GoogleFonts.kameron(
                            textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/currency.svg'),
                          Text(
                            '418',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'GST',
                        style: GoogleFonts.kameron(
                            textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/currency.svg'),
                          Text(
                            '40',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Charge',
                        style: GoogleFonts.kameron(
                            textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/currency.svg'),
                          Text(
                            '18',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: GoogleFonts.kameron(
                            textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/currency.svg'),
                          Text(
                            '0',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: GoogleFonts.kameron(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/currency.svg'),
                          Text(
                            '478',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: Get.height * .056,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                    ),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF06BF19),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Center(
                      child: Text(
                        'ORDER ACCEPTED',
                        style: GoogleFonts.kameron(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )),
                Container(
                    height: Get.height * .056,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                    ),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFDD072E),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Center(
                      child: Text(
                        'ORDER REJECTED',
                        style: GoogleFonts.kameron(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 22,
            )
          ],
        ),
      ),
    );
  }
}
