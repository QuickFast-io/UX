import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/screens/side_menu/profile_menu_screen.dart';

class Listing_Add_Screen extends StatefulWidget {
  const Listing_Add_Screen({Key? key}) : super(key: key);

  @override
  State<Listing_Add_Screen> createState() => _Listing_Add_ScreenState();
}

class _Listing_Add_ScreenState extends State<Listing_Add_Screen> {

  bool tour = false;
  bool property = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        shape: Border(
            bottom: BorderSide(
                color: AppColors.appColor,
                width: 2.0
            )
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
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

        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                  ProfileMenu_Screen()), (Route<dynamic> route) => false);
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(1.0, 0.0, 15.0, 0.0),
              child:  Center(
                child: Text(
                  "Cancel",
                  style: CustomWidget(context: context).CustomSizedTextStyle(
                      15.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                ),
              ),
            ),
          )
        ],
      ),
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 15.0,),
                  Text(
                    "Listings Add Ons",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        26.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  Text(
                    "Let us help you improve your listings",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        AppColors.hintColor,
                        FontWeight.w500,
                        'FontRegular'),
                  ),

                  Container(
                    height: 40.0,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Theme(data: ThemeData(
                        primarySwatch: Colors.yellow,
                        unselectedWidgetColor: Colors.grey, // Your color
                      ),
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            value: property,
                            onChanged: (bool? value) {
                              setState(() {
                                property = value!;
                              });
                            },
                          )),
                      Flexible(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "List your property on MLS",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                15.0,
                                Colors.black,
                                FontWeight.w500,
                                'FontRegular'),

                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Get seen by more people",
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    12.0,
                                    AppColors.hintColor,
                                    FontWeight.w500,
                                    'FontRegular'),

                              ),
                              Text(
                                "\$ 1000 extra",
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    12.0,
                                    Colors.black,
                                    FontWeight.w500,
                                    'FontRegular'),

                              )
                            ],
                          )
                        ],
                      ),)

                      //Checkbox
                    ],
                  ),

                  SizedBox(
                    height: 15.0,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Theme(data: ThemeData(
                        primarySwatch: Colors.yellow,
                        unselectedWidgetColor: Colors.grey, // Your color
                      ),
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            value: tour,
                            onChanged: (bool? value) {
                              setState(() {
                                tour = value!;
                              });
                            },
                          )),
                      Flexible(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Include a virtual tour",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                15.0,
                                Colors.black,
                                FontWeight.w500,
                                'FontRegular'),

                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Create a degital twin of your property",
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    12.0,
                                    AppColors.hintColor,
                                    FontWeight.w500,
                                    'FontRegular'),

                              ),
                              Text(
                                "\$ 5000 extra",
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    12.0,
                                    Colors.black,
                                    FontWeight.w500,
                                    'FontRegular'),

                              )
                            ],
                          )
                        ],
                      ),)

                      //Checkbox
                    ],
                  ),

                ],
              ),
            ),

            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             Success_Property_Screen()));
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
                    "Countinue",
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
    );
  }
}
