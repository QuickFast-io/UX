import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';

class PropertyInfo_Screen5 extends StatefulWidget {
  const PropertyInfo_Screen5({Key? key}) : super(key: key);

  @override
  State<PropertyInfo_Screen5> createState() => _PropertyInfo_Screen5State();
}

class _PropertyInfo_Screen5State extends State<PropertyInfo_Screen5> {
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
        // title: Text(
        //   "Profile".toUpperCase(),
        //   style: CustomWidget(context: context).CustomSizedTextStyle(
        //       16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
        // ),
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(1.0, 0.0, 15.0, 0.0),
            child:  Center(
              child: Text(
                "Cancel",
                style: CustomWidget(context: context).CustomSizedTextStyle(
                    15.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
              ),
            ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.0,),

              Text(
                "Upload Pictures of Property",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    24.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Upload pictures of the property to help potential buyers Visualize what it looks like.",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    13.0,
                    AppColors.hintColor,
                    FontWeight.w500,
                    'FontRegular'),
              ),
              SizedBox(
                height: 25.0,
              ),
              Form(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upload Pictures of the Property",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w500,
                        'FontRegular'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  InkWell(
                    onTap: () async {
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(10, 50.0, 10, 40.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors
                                .hintColor
                                .withOpacity(0.2),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.transparent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/menu/upload.png',
                            height: 20.0,
                            width: 20.0,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Click to upload a file",
                            textAlign: TextAlign.center,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                13.0,
                                AppColors.blackColor,
                                FontWeight.w600,
                                'FontRegular'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "PNG, JPG up to 5MB",
                            textAlign: TextAlign.center,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                13.0,
                                AppColors.hintColor,
                                FontWeight.w500,
                                'FontRegular'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    "Upload Floor Plan (optional)",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w500,
                        'FontRegular'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  InkWell(
                    onTap: () async {
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(10, 50.0, 10, 40.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors
                                .hintColor
                                .withOpacity(0.2),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.transparent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/menu/upload.png',
                            height: 20.0,
                            width: 20.0,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Click to upload a file",
                            textAlign: TextAlign.center,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                13.0,
                                AppColors.blackColor,
                                FontWeight.w600,
                                'FontRegular'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "PNG, JPG up to 5MB",
                            textAlign: TextAlign.center,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                13.0,
                                AppColors.hintColor,
                                FontWeight.w500,
                                'FontRegular'),
                          ),
                        ],
                      ),
                    ),
                  ),


                ],
              )),
              Container(
                height: 100.0,
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             PropertyInfo_Screen3()));
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
                      "Continue",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          14.0,
                          AppColors.blackColor,
                          FontWeight.w700,
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
