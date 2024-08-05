import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yatri_restro/helpers/apis.dart';
import 'package:yatri_restro/screens/dashboard/delivery_setting_screen.dart';

import 'forward_button.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(right: Get.width * .4),
            child: Image.asset(
              'assets/small.png',
              width: Get.width * .01,
              height: Get.height * .05,
            ),
          ),
          const Divider(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22),
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
            height: Get.height * .12,
            width: 122,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.30),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: Get.height * .07,
                  width: Get.width * .18,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.30),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Icon(
                    Icons.person_2,
                    size: 56,
                    color: Color(0xff0E455D),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aman Raj',
                      style: GoogleFonts.kameron(
                          color: const Color(0xff0E455D),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ), Text(
                      '3528935725',
                      style: GoogleFonts.kameron(
                          color: const Color(0xff0E455D),
                         ),
                    ), Text(
                      'amanraj2@gmail.com',
                      style: GoogleFonts.kameron(
                        fontSize: 12,
                          color: const Color(0xff0E455D),
                         ),
                    )
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person_3,
              color: Color(0xff0E455D),
            ),
            title: Text(
              'Profile',
              style: GoogleFonts.kameron(
                  textStyle: const TextStyle(
                color: Color(0xff0E455D),
                fontWeight: FontWeight.w700,
              )),
            ),
            trailing: ForwardButton(
              onTap: () {},
            ),
            onTap: () {
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.menu,
              color: Color(0xff0E455D),
              size: 30,
            ),
            title: Text(
              'Menu',
              style: GoogleFonts.kameron(
                  textStyle: const TextStyle(
                color: Color(0xff0E455D),
                fontWeight: FontWeight.w700,
              )),
            ),
            trailing: ForwardButton(
              onTap: () {},
            ),
            onTap: () {
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.contact_mail,
              color: Color(0xff0E455D),
            ),
            title: Text(
              'Outlet',
              style: GoogleFonts.kameron(
                  textStyle: const TextStyle(
                color: Color(0xff0E455D),
                fontWeight: FontWeight.w700,
              )),
            ),
            trailing: ForwardButton(
              onTap: () {},
            ),
            onTap: () {
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.wallet,
              color: Color(0xff0E455D),
              size: 30,
            ),
            title: Text(
              'Wallet',
              style: GoogleFonts.kameron(
                  textStyle: const TextStyle(
                color: Color(0xff0E455D),
                fontWeight: FontWeight.w700,
              )),
            ),
            trailing: ForwardButton(
              onTap: () {},
            ),
            onTap: () {
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Color(0xff0E455D),
              size: 30,
            ),
            title: Text(
              'Delivery Setting',
              style: GoogleFonts.kameron(
                  textStyle: const TextStyle(
                color: Color(0xff0E455D),
                fontWeight: FontWeight.w700,
              )),
            ),
            trailing: ForwardButton(
              onTap: () {},
            ),
            onTap: () {
              Get.to(() => const DeliverySettingScreen());
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Color(0xff0E455D),
              size: 30,
            ),
            title: Text(
              'Logout',
              style: GoogleFonts.kameron(
                  textStyle: const TextStyle(
                color: Color(0xff0E455D),
                fontWeight: FontWeight.w700,
              )),
            ),
            trailing: ForwardButton(
              onTap: () {},
            ),
            onTap: () {
                  showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title:  Text(
                          "Are you sure?",
                          style: GoogleFonts.kameron(textStyle: const TextStyle(
                            
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),),
                        content:  Text(
                            "Click Confirm if you want to Log out of the app",
                            style: GoogleFonts.kameron(textStyle: const TextStyle(
                              fontSize: 14,
                            )),),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child:  Text("Cancel",style: 
                              GoogleFonts.kameron(textStyle: const TextStyle())
                              )),
                          TextButton(
                              onPressed: () {
                                ApiHelper.logout(context);

                                Navigator.pop(context);
                              },
                              child:  Text(
                                "Confirm",
                                style: 
                              GoogleFonts.kameron(textStyle: const TextStyle(
                               color: Colors.red),
                              )))
                        ],
                      ));
            },
          ),
        ],
      ),
    );
  }
}
