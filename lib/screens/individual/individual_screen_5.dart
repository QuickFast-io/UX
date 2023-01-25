import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';

class Individual_Screen5 extends StatefulWidget {
  const Individual_Screen5({Key? key}) : super(key: key);

  @override
  State<Individual_Screen5> createState() => _Individual_Screen5State();
}

class _Individual_Screen5State extends State<Individual_Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 25.0,),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 15.0,),
                  Image.asset("assets/others/logo.png",
                    color: AppColors.appColor,
                    height: 80,),
                  SizedBox(height: 25.0,),

                  Text(
                    "Wait a minute",
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
                    "We are hunting this information down",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        13.0,
                        AppColors.blackColor,
                        FontWeight.w500,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                ],

              ),
            ),
            SizedBox(height: 15.0,),
            // InkWell(
            //   onTap: (){
            //     setState(() {
            //       Navigator.of(context).popUntil((route) => route.isFirst);
            //     });
            //   },
            //   child: Container(
            //     padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
            //     decoration: BoxDecoration(
            //       color: AppColors.appColor,
            //       // border: Border.all(
            //       //     color: AppColors.blackColor
            //       // ),
            //       borderRadius: BorderRadius.circular(15.0),
            //     ),
            //     child: Center(
            //       child: Text(
            //         "Continue",
            //         style: CustomWidget(context: context)
            //             .CustomSizedTextStyle(
            //             14.0,
            //             AppColors.blackColor,
            //             FontWeight.w700,
            //             'FontRegular'),
            //       ),
            //     ),
            //   ),
            // ),

            SizedBox(height: 10.0,),
          ],

        ),
      )
    );
  }
}
