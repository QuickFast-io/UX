import 'dart:io';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/colors.dart';
import '../../common/custom_widget.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

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
  late Widget screen = Container();
  bool dashView =false;
  int currentindex = 2;
  String headerTitle = "";

  List<Widget> bottomPage = [
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dashView = true;
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
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        /*leading: Padding(
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
          child: InkWell(
            onTap: (){

            },
            child: SvgPicture.asset(
              'assets/images/menu.svg',
              color: AppColors.blackColor,
              height: 10.0,
            ),
          ),
        ),*/
        title: Text(
          headerTitle,
          style: CustomWidget(context: context).CustomSizedTextStyle(
              22.0, AppColors.blackColor, FontWeight.w700, 'FontRegular'),
        ),
        centerTitle: true,
        /*actions: [
          Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12.0),
            child: SvgPicture.asset(
              'assets/images/notify.svg',
              height: 20.0,
              color: AppColors.blackColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12.0),
            child: SvgPicture.asset(
              'assets/images/profile.svg',
              color: AppColors.blackColor,
            ),
          ),
          SizedBox(
            width: 20.0,
          )
        ],*/
      ),
      body: Stack(
        children: [
          dashView ? dashBoard(): screen,
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
              customWidget: Icon(
                currentindex == 0?Icons.home:Icons.home_outlined,
                size:24.0,
                color: currentindex == 0
                    ? AppColors.blackColor
                    : AppColors.blackColor,
              ),
            title: 'Home',
          ),
          FloatingNavbarItem(
              customWidget: Icon(
                currentindex == 1?Icons.chat_bubble_outlined:Icons.chat_bubble_outline_outlined,
                size:24.0,
                color: currentindex == 1
                    ? AppColors.blackColor
                    : AppColors.blackColor,
              ),
            title: 'Chat',
          ),
          FloatingNavbarItem(
              customWidget: Container(
                height: 55.0,
                width: 55.0,
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.appColor,
                ),
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  size:24.0,
                  color: currentindex == 2
                      ? AppColors.blackColor
                      : AppColors.blackColor,
                ),
              ),
          ),
          FloatingNavbarItem(
              customWidget: Icon(
                Icons.cruelty_free_outlined,
                size:24.0,
                color: currentindex == 3
                    ? AppColors.blackColor
                    : AppColors.blackColor,
              ),
            title: 'Rabbit',
          ),
          FloatingNavbarItem(
              customWidget: Icon(
                Icons.dashboard_outlined,
                size:24.0,
                color: currentindex == 4
                    ? AppColors.blackColor
                    : AppColors.blackColor,
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
    setState(() {
      currentindex = index;
      headerTitle = titleheader[currentindex];

      if (index == 0) {
        dashView = true;
      } else {
        dashView = false;
        screen = bottomPage[index - 1];
      }
    });
  }

}

