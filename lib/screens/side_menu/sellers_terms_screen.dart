import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/screens/side_menu/offer_success.dart';
import 'package:rabbit/screens/side_menu/offers_screen.dart';
import 'package:rabbit/screens/side_menu/offers_screen2.dart';

class Sellers_Terms_Screen extends StatefulWidget {
  const Sellers_Terms_Screen({Key? key}) : super(key: key);

  @override
  State<Sellers_Terms_Screen> createState() => _Sellers_Terms_ScreenState();
}

class _Sellers_Terms_ScreenState extends State<Sellers_Terms_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        elevation: 0.5,
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
        title: Text(
          "Seller's Terms",
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding:
              EdgeInsets.only(left: 5.0, bottom: 5.0, top: 5.0, right: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset("assets/menu/leafe.svg",
                  height: 30.0,),
              ))
        ],
      ),
      resizeToAvoidBottomInset: true,
      body: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height,
        ),
        decoration: BoxDecoration(
            color: AppColors.appColor
        ),
        child: Container(
          margin: EdgeInsets.only(top: 35.0),
            width: double.infinity,

            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                )),
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sales Price",
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            16.0,
                            AppColors.blackColor,
                            FontWeight.w600,
                            'FontRegular'),
                      ),

                      Text(
                        "\$500,000 ",
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            14.0,
                            AppColors.hintColor,
                            FontWeight.w500,
                            'FontRegular'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Earnest Money",
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            16.0,
                            AppColors.blackColor,
                            FontWeight.w600,
                            'FontRegular'),
                      ),

                      Text(
                        "\$500",
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            14.0,
                            AppColors.hintColor,
                            FontWeight.w500,
                            'FontRegular'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Closing Date",
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            16.0,
                            AppColors.blackColor,
                            FontWeight.w600,
                            'FontRegular'),
                      ),

                      Text(
                        "Asap".toUpperCase(),
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            14.0,
                            AppColors.hintColor,
                            FontWeight.w500,
                            'FontRegular'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Last Title Check",
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            16.0,
                            AppColors.blackColor,
                            FontWeight.w600,
                            'FontRegular'),
                      ),

                      Text(
                        "12/12/2024",
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            14.0,
                            AppColors.hintColor,
                            FontWeight.w500,
                            'FontRegular'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Survey Provided",
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            16.0,
                            AppColors.blackColor,
                            FontWeight.w600,
                            'FontRegular'),
                      ),

                      Text(
                        "Yes",
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            14.0,
                            AppColors.hintColor,
                            FontWeight.w500,
                            'FontRegular'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),

                  SizedBox(
                    height: 180,
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    Offers_Screen2()));
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
                          "Make offer",
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
            )
        ),
      ),
    );
  }
}
