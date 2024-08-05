import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yatri_restro/helpers/apis.dart';
import 'package:yatri_restro/models/all_order_model.dart';
import 'package:yatri_restro/screens/dashboard/notification_screen.dart';
import 'package:yatri_restro/screens/dashboard/order_detail_screen.dart';
import 'package:yatri_restro/widgets/forward_button.dart';

import '../../controllers/all_order_controller.dart';
import '../../widgets/drawer_widget.dart';
import '../../widgets/tabbar_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Future<List<AllOrderModel>>? futureOrders;

  AllOrderController allOrderController = Get.put(AllOrderController());
  ApiHelper apiHelper = ApiHelper();

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
    tabController.addListener(() {
      setState(() {});
    });
    // allOrderController.fetchOrders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/small.png',
              height: 28,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const NotificationScreen());
            },
            icon: const Icon(
              Icons.notifications,
              color: Color(0xff0E455D),
              size: 28,
            ),
          ),
          const SizedBox(
            width: 6,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Container(
              width: Get.width,
              height: Get.height * .12,
              decoration: ShapeDecoration(
                color: const Color(0xff0E455D),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
              ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/wallet.svg'),
                    const SizedBox(
                      width: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22),
                      child: Column(
                        children: [
                          Text(
                            'Today',
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/currency.svg'),
                              Text(
                                '350/-',
                                style: GoogleFonts.kameron(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('This week',
                    style: GoogleFonts.kameron(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Text('This Month',
                    style: GoogleFonts.kameron(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            TabBar(
                dividerColor: Colors.transparent,
                labelPadding: EdgeInsets.zero,
                controller: tabController,
                indicatorColor: Colors.transparent,
                tabs: [
                  TabBarItem(
                    title: 'Active Orders',
                    isSelected: tabController.index == 0,
                    selectedColor: const Color(0xFFB65426),
                  ),
                  TabBarItem(
                    title: 'Delivered Orders',
                    isSelected: tabController.index == 1,
                    selectedColor: const Color(0xFF06BF19),
                  ),
                  TabBarItem(
                    title: 'Cancelled',
                    isSelected: tabController.index == 2,
                    selectedColor: const Color(0xFFDD072E),
                  ),
                ]),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                FutureBuilder<List<AllOrderModel>>(
                    future: apiHelper.getAllOrders(),
                    builder: (BuildContext context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }else {
                        
                        return ListView.builder(
                          padding: const EdgeInsets.only(top: 6),
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            AllOrderModel? order = snapshot.data?[index];

                            return Column(
                              children: [

                                // Text(snapshot.data?.length.toString()??''),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 12),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFEFEFEF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: Get.height * .021,
                                            // width: Get.width*.4,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4),
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF08445C),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(3)),
                                            ),
                                            child: Text(
                                              'Order id- ${order?.status ?? ''}',
                                              style: GoogleFonts.kameron(
                                                textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Arrival time',
                                                style: GoogleFonts.kameron(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                order?.status
                                                        .toString() ??
                                                    '',
                                                style: GoogleFonts.kameron(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Train no/Name-    ',
                                            style: GoogleFonts.kameron(
                                              textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            order?.status.toString() ?? '',
                                            style: GoogleFonts.kameron(
                                              textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Total amount-    ',
                                                style: GoogleFonts.kameron(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                order?.mobile.toString() ?? '',
                                                style: GoogleFonts.kameron(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 14,
                                              ),
                                              Container(
                                                width: Get.width * .16,
                                                height: Get.height * .024,
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFB65426),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'COD',
                                                    style: GoogleFonts.kameron(
                                                        textStyle:
                                                            const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          ForwardButton(
                                            onTap: () {
                                              Get.to(() =>
                                                  const OrderDetailScreen());
                                            },
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    }),

                InkWell(
                  onTap: () {
                    // apiHelper.getAllOrders();
                  },
                  child: Center(
                    child: Text(
                      'There is no delivered order yet',
                      style: GoogleFonts.kameron(
                          textStyle: const TextStyle(
                              color: Color(0xFF08445C),
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),

               
                Center(
                  child: Text(
                    'There is no cancelled order yet',
                    style: GoogleFonts.kameron(
                        textStyle: const TextStyle(
                            color: Color(0xFF08445C),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
