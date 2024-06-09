import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yatri_restro/screens/dashboard/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Get.to(()=>const NotificationScreen());
            },
            icon: const Icon(
              Icons.notifications,
              color:  Color(0xff0E455D),
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
                color: const Color(0xFFB65426),
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
                          Text(
                            '350/-',
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff0E455D),
              ),
              child: TabBar(
                  dividerColor: Colors.transparent,
                  labelPadding: EdgeInsets.zero,
                  controller: tabController,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    TabBarItem(
                      title: 'Confirmed',
                      isSelected: tabController.index == 0,
                      selectedColor: Colors.white,
                    ),
                    TabBarItem(
                      title: 'Cooking',
                      isSelected: tabController.index == 1,
                      selectedColor: Colors.white,
                    ),
                    TabBarItem(
                      title: 'Ready for handover',
                      isSelected: tabController.index == 2,
                      selectedColor: Colors.white,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Color selectedColor;

  const TabBarItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.selectedColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 42,
        decoration: BoxDecoration(
          color: isSelected ? selectedColor : null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 22),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.kameron(
              textStyle: TextStyle(
                color: isSelected ? Colors.black : Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ));
  }
}
