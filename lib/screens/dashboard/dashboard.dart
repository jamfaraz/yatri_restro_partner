import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yatri_restro/screens/dashboard/delivery_setting_screen.dart';
import 'package:yatri_restro/screens/dashboard/order_detail_screen.dart';

import 'home_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with AutomaticKeepAliveClientMixin<Dashboard> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          HomeScreen(),
          OrderDetailScreen(),
          DeliverySettingScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.7),
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.shifting,
        selectedLabelStyle: const TextStyle(
            fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black),
        unselectedLabelStyle: const TextStyle(
            fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/home.svg',
            ),
            label: 'HOME',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/order.svg',
            ),
            label: 'ORDERS',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/last.svg',
            ),
            label: 'PROFILE',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
