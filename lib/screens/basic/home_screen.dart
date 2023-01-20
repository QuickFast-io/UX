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
    "Home",
    "Stock",
    "Clients",
    "Task",
  ];
  late Widget screen = Container();
  bool dashView =false;
  int currentindex = 0;
  String headerTitle = "";

  List<Widget> bottomPage = [
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
        leading: Padding(
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
        ),
        title: Text(
          "Alpharive",
          style: CustomWidget(context: context).CustomSizedTextStyle(
              22.0, AppColors.blackColor, FontWeight.w700, 'FontRegular'),
        ),
        actions: [
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
        ],
      ),
      body: Stack(
        children: [
          dashView ? dashBoard(): screen,
        ],
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Color(0xFFEBF3FF),
        selectedItemColor: AppColors.appColor,
        unselectedItemColor: AppColors.blackColor,
        onTap: (int val) {
          changeIndex(val);
        },
        currentIndex: currentindex,
        items: [
          FloatingNavbarItem(
              customWidget: SvgPicture.asset(
                'assets/images/bmenu1.svg',
                height: 24.0,
                color: currentindex == 0
                    ? AppColors.appColor
                    : AppColors.blackColor,
              )),
          FloatingNavbarItem(
              customWidget: SvgPicture.asset(
                'assets/images/bmenu2.svg',
                height: 24.0,
                color: currentindex == 1
                    ? AppColors.appColor
                    : AppColors.blackColor,
              )),
          FloatingNavbarItem(
              customWidget: SvgPicture.asset(
                'assets/images/bmenu3.svg',
                height: 24.0,
                color: currentindex == 2
                    ? AppColors.appColor
                    : AppColors.blackColor,
              )),
          FloatingNavbarItem(
              customWidget: SvgPicture.asset(
                'assets/images/bmenu4.svg',
                height: 24.0,
                color: currentindex == 3
                    ? AppColors.appColor
                    : AppColors.blackColor,
              )),
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

