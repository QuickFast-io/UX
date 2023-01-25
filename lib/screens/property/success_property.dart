import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/screens/side_menu/profile_menu_screen.dart';

class Success_Property_Screen extends StatefulWidget {
  const Success_Property_Screen({Key? key}) : super(key: key);

  @override
  State<Success_Property_Screen> createState() => _Success_Property_ScreenState();
}

class _Success_Property_ScreenState extends State<Success_Property_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.whiteColor,
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment. spaceEvenly,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment. center,
              children: [
                Image.asset("assets/menu/succcesss.png",
                  height: 150,),

                SizedBox(height: 20.0,),
                Text(
                  "Congratulations",
                  style: CustomWidget(context: context)
                      .CustomSizedTextStyle(
                      28.0,
                      AppColors.blackColor,
                      FontWeight.w600,
                      'FontRegular'),
                ),
                SizedBox(
                  height: 10.0,
                ),

                Text(
                  "Your property in now listed",
                  style: CustomWidget(context: context)
                      .CustomSizedTextStyle(
                      14.0,
                      AppColors.blackColor,
                      FontWeight.w500,
                      'FontRegular'),
                ),

                SizedBox(height: 100.0,),
              ],
            ),
          ),

          GestureDetector(
            onTap: (){
             Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(5.0, 12.0, 5.0, 12.0),
              decoration: BoxDecoration(
                color: AppColors.appColor,
                // border: Border.all(
                //     color: AppColors.blackColor
                // ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: Text(
                  "View property",
                  style: CustomWidget(context: context)
                      .CustomSizedTextStyle(
                      16.0,
                      AppColors.blackColor,
                      FontWeight.w700,
                      'FontRegular'),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
