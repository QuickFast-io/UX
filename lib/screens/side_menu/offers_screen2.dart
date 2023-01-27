import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/screens/side_menu/offer_success.dart';

class Offers_Screen2 extends StatefulWidget {
  const Offers_Screen2({Key? key}) : super(key: key);

  @override
  State<Offers_Screen2> createState() => _Offers_Screen2State();
}

class _Offers_Screen2State extends State<Offers_Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          "Offer",
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox( height: 15.0,),

            Text(
              "Exquisitely finished detached 6 Bedroom mansion",
              style: CustomWidget(context: context)
                  .CustomSizedTextStyle(
                  25.0,
                  AppColors.blackColor,
                  FontWeight.w600,
                  'FontRegular'),
            ),
            SizedBox(
              height: 15.0,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on_outlined,
                  size: 20.0,
                  color: AppColors.blackColor,
                ),
                SizedBox(width: 5.0,),
                Text(
                  "123 Happy Street Alpharetta",
                  style: CustomWidget(context: context)
                      .CustomSizedTextStyle(
                      11.0,
                      AppColors.blackColor,
                      FontWeight.w500,
                      'FontRegular'),
                )
              ],
            ),
            SizedBox(height: 15.0,),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/menu/Sleeping bed.svg",
                        height: 22.0,
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        "2 bedrooms",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            11.0,
                            AppColors.blackColor,
                            FontWeight.w500,
                            'FontRegular'),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/menu/Kitchen.svg",
                        height: 22.0,
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        "2 Kitchen",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            11.0,
                            AppColors.blackColor,
                            FontWeight.w500,
                            'FontRegular'),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/menu/Bathtub.svg",
                        height: 22.0,
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        "4,000 Sq Ft",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            11.0,
                            AppColors.blackColor,
                            FontWeight.w500,
                            'FontRegular'),
                      )
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.0,),

            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: AppColors.hintColor.withOpacity(0.08)),
                        color: Colors.white
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Seller's Price",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              15.0,
                              AppColors.blackColor,
                              FontWeight.w500,
                              'FontRegular'),
                        ),
                        Text(
                          "\$500,000",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              13.0,
                              AppColors.hintColor,
                              FontWeight.w500,
                              'FontRegular'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: AppColors.hintColor.withOpacity(0.08)),
                        color: Colors.white
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Earnest Money",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              15.0,
                              AppColors.blackColor,
                              FontWeight.w500,
                              'FontRegular'),
                        ),
                        Text(
                          "\$500",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              13.0,
                              AppColors.hintColor,
                              FontWeight.w500,
                              'FontRegular'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: AppColors.hintColor.withOpacity(0.08)),
                        color: Colors.white
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Updated Total",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              15.0,
                              AppColors.blackColor,
                              FontWeight.w500,
                              'FontRegular'),
                        ),
                        Text(
                          "ASAP",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              13.0,
                              AppColors.hintColor,
                              FontWeight.w500,
                              'FontRegular'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25.0,),

                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: AppColors.hintColor.withOpacity(0.08)),
                        color: Colors.white
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Offer_Success_Screen()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset("assets/menu/Accept.svg",
                                height: 25.0,
                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                "Accept",
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    13.0,
                                    AppColors.blackColor,
                                    FontWeight.w500,
                                    'FontRegular'),
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset("assets/menu/Handshake.svg",
                              height: 25.0,
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              "Negotiate",
                              style: CustomWidget(context: context)
                                  .CustomSizedTextStyle(
                                  13.0,
                                  AppColors.blackColor,
                                  FontWeight.w500,
                                  'FontRegular'),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset("assets/menu/Cancel.svg",
                              height: 25.0,
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              "Widthdraw",
                              style: CustomWidget(context: context)
                                  .CustomSizedTextStyle(
                                  13.0,
                                  AppColors.blackColor,
                                  FontWeight.w500,
                                  'FontRegular'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),



            SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
