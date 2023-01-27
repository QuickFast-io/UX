import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/screens/success/deal_screen.dart';

class Offer_To_Seller_Screen2 extends StatefulWidget {
  const Offer_To_Seller_Screen2({Key? key}) : super(key: key);

  @override
  State<Offer_To_Seller_Screen2> createState() => _Offer_To_Seller_Screen2State();
}

class _Offer_To_Seller_Screen2State extends State<Offer_To_Seller_Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.15,
        // leading: Padding(
        //     padding:
        //     EdgeInsets.only(left: 2.0, bottom: 5.0, top: 5.0, right: 2.0),
        //     child: InkWell(
        //       onTap: () {
        //         Navigator.pop(context);
        //       },
        //       child: Icon(
        //         Icons.arrow_back_rounded,
        //         color: AppColors.blackColor,
        //       ),
        //     )
        // ),
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
                  Image.asset("assets/others/logo.png",
                    height: 100,),

                  SizedBox(height: 35.0,),
                  Text(
                    "Congratulations on accepting the offer",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        28.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  Text(
                    "To purchase property you will need \nto complete some paper work",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        15.0,
                        AppColors.blackColor,
                        FontWeight.w500,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 100.0,),
                ],
              ),
            ),

            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              Success_Deal_Screen()));
                });
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
                    "Continue",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
