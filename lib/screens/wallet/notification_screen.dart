import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/screens/wallet/set_pin.dart';

class Notification_Screen extends StatefulWidget {
  const Notification_Screen({Key? key}) : super(key: key);

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        // shape: Border(
        //     bottom: BorderSide(
        //         color: AppColors.appColor,
        //         width: 2.0
        //     )
        // ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0.15,
        leading: Padding(
            padding:
            EdgeInsets.only(left: 2.0, bottom: 5.0, top: 5.0, right: 2.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: AppColors.blackColor,

              ),
            )),
        centerTitle: true,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/others/logo.png",
              color: AppColors.appColor,
              height: 22,),
            SizedBox(width: 5.0,),
            Text(
              "Rabbit",
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
            ),
          ],
        ),
        //
      ),
      body: Container(
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
                  SvgPicture.asset("assets/menu/bell.svg",
                    height: 100,),

                  SizedBox(height: 20.0,),
                  Text(
                    "Turn on notifications",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        30.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  Text(
                    "Get updates on your account, new \nfeatures and more. You can change this\n any time in settings.",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w500,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 100.0,),
                ],
              ),
            ),

           Container(
             child: Column(
               children: [
                 GestureDetector(
                   onTap: (){

                     Navigator.of(context).push(
                         MaterialPageRoute(
                             builder: (context) =>
                                 SetpinPage()));
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
                         "Allow",
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             16.0,
                             AppColors.blackColor,
                             FontWeight.w700,
                             'FontRegular'),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(height: 20.0,),

                 GestureDetector(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: Container(
                     padding: EdgeInsets.fromLTRB(5.0, 12.0, 5.0, 12.0),
                     decoration: BoxDecoration(
                       color: AppColors.whiteColor,
                       border: Border.all(
                           color: AppColors.blackColor
                       ),
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     child: Center(
                       child: Text(
                         "Deny",
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
           )

          ],
        ),
      ),
    );
  }
}
