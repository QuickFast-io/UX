import 'dart:io';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/screens/home/chat_menu_screen.dart';
import 'package:rabbit/screens/home/chat_screen.dart';
import 'package:rabbit/screens/home/dashboard.dart';
import 'package:rabbit/screens/wallet/rabbit_page.dart';
import 'package:rabbit/screens/home/wallet_page.dart';
import 'package:rabbit/screens/side_menu/offers_screen.dart';
import 'package:rabbit/screens/side_menu/profile_menu_screen.dart';

import '../../common/colors.dart';
import '../../common/custom_widget.dart';

class Home_Screen extends StatefulWidget {
  int index;
   Home_Screen({Key? key,required this.index}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}


class _Home_ScreenState extends State<Home_Screen> {

  List<String> titleheader = [
    "Property",
    "Chat",
    "Wallet",
    "Rabbit",
    "More",
  ];
  late Widget screen = RabbitScreen();
  bool dashView =false;
  int currentindex = 2;
  String headerTitle = "";

  List<Widget> bottomPage = [
    DashBoard(),
    ChatScreen(),
    RabbitScreen(),
    Wallet(),

    ProfileMenu_Screen(),

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dashView = true;
    if(widget.index==-1)
      {
        currentindex=2;
      }
    else
      {
        currentindex=widget.index;
      }
    headerTitle = titleheader[currentindex];
  }

  Widget dashBoard(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.backgroundColor,
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Scaffold(
      backgroundColor: AppColors.backgroundColor,

      // appBar: currentindex==4|| currentindex==2?PreferredSize(child: Container(), preferredSize:Size(0.0,0.0)):AppBar(
      //   backgroundColor: AppColors.backgroundColor,
      //   automaticallyImplyLeading: false,
      //   elevation: 0.0,
      //   title: Text(
      //     headerTitle,
      //     style: CustomWidget(context: context).CustomSizedTextStyle(
      //         22.0, AppColors.blackColor, FontWeight.w700, 'FontRegular'),
      //   ),
      //   centerTitle: true,
      //   /*actions: [
      //     Padding(
      //       padding: EdgeInsets.only(left: 12.0, right: 12.0),
      //       child: SvgPicture.asset(
      //         'assets/images/notify.svg',
      //         height: 20.0,
      //         color: AppColors.blackColor,
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.only(left: 12.0, right: 12.0),
      //       child: SvgPicture.asset(
      //         'assets/images/profile.svg',
      //         color: AppColors.blackColor,
      //       ),
      //     ),
      //     SizedBox(
      //       width: 20.0,
      //     )
      //   ],*/
      // ),
      body: Stack(
        children: [screen,
        ],
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Color(0xFFEBF3FF),
        selectedBackgroundColor: Colors.transparent,
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: AppColors.blackColor,
        onTap: (int val) {
          changeIndex(val);
        },
        currentIndex: currentindex,
        items: [
          FloatingNavbarItem(
              customWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: currentindex==0?Image.asset(
                  "assets/menu_icons/home_active.png",
                  height:30.0 ,
                ):Image.asset(
                  "assets/menu_icons/home.png",
                  height:24.0 ,
                ),
              ),
            title: 'Property',
          ),
          FloatingNavbarItem(
              customWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: currentindex==1?Image.asset(
                  "assets/menu_icons/chat_active.png",
                    height:30.0 ,
                ):Image.asset(
                  "assets/menu_icons/chat.png",
                  height:24.0 ,
                ),
              ),
            title: 'Chat',
          ),
          FloatingNavbarItem(
              customWidget: Container(

                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.appColor,
                ),
                child:Image.asset(
                  "assets/menu_icons/wallet.png",
                  width: 24.0,
                  height:24.0 ,
                  color: Colors.black,
                  fit: BoxFit.contain,
                ),
              ),
          ),
          FloatingNavbarItem(
              customWidget:Padding(
                padding: const EdgeInsets.all(8.0),
                child:currentindex==3?Image.asset(
                  "assets/menu_icons/rabbit_active.png",
                  height:30.0 ,
                ):Image.asset(
                  "assets/menu_icons/rabbit.png",
                  height:24.0 ,
                ),
              ),
            title: 'Rabbit',
          ),
          FloatingNavbarItem(
              customWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: currentindex==4?Image.asset(
                  "assets/menu_icons/more_active.png",
                  height:30.0 ,
                ):Image.asset(
                  "assets/menu_icons/more.png",
                  height:24.0 ,
                ),
              ),
            title: 'More',
          ),
        ],
      ),
    ), onWillPop:  () async {
      if (currentindex != 0) {
        setState(() {
          currentindex = 0;
          dashView = true;
          //currentScreen = screens[currentTab];
        });
        return false;
      } else {
        exit(0);
      }
      return true;
    },

    );
    
  }

  changeIndex(int index) {
    print(index-1);
    setState(() {
      currentindex = index;
      headerTitle = titleheader[currentindex];


        dashView = false;
        screen = bottomPage[index];

    });
  }

}

