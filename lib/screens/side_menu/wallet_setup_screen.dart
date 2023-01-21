import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';

class Wallet_Setup_Screen extends StatefulWidget {
  const Wallet_Setup_Screen({Key? key}) : super(key: key);

  @override
  State<Wallet_Setup_Screen> createState() => _Wallet_Setup_ScreenState();
}

class _Wallet_Setup_ScreenState extends State<Wallet_Setup_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.2,
        leading: Padding(
            padding:
            EdgeInsets.only(left: 9.0, bottom: 5.0, top: 5.0, right: 2.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: AppColors.blackColor,

              ),
            )),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/others/logo.png",
              height: 25.0,
              color: AppColors.appColor,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              "Rabbit",
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          Container(
            width: 30.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
          color: AppColors.whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Wallet Setup",
                style: CustomWidget(context: context).CustomSizedTextStyle(
                    35.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
              ),
              SizedBox(height: 15.0,),
              Text(
                "Import wallet or create a new one",
                style: CustomWidget(context: context).CustomSizedTextStyle(
                    18.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
              ),
              SizedBox(height: 15.0,),

              Container(
                height: 220,
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             CongratsScreen()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
                  decoration: BoxDecoration(
                    color: AppColors.appColor,
                    // border: Border.all(
                    //     color: AppColors.blackColor
                    // ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text(
                      "Create a new one",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          16.0,
                          AppColors.blackColor,
                          FontWeight.w600,
                          'FontRegular'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              InkWell(
                onTap: (){
                  setState(() {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             CongratsScreen()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(
                        color: AppColors.blackColor
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text(
                      "Import your wallet",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          16.0,
                          AppColors.blackColor,
                          FontWeight.w600,
                          'FontRegular'),
                    ),
                  ),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
