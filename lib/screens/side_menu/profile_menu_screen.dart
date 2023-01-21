import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';

class ProfileMenu_Screen extends StatefulWidget {
  const ProfileMenu_Screen({Key? key}) : super(key: key);

  @override
  State<ProfileMenu_Screen> createState() => _ProfileMenu_ScreenState();
}

class _ProfileMenu_ScreenState extends State<ProfileMenu_Screen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(  statusBarColor: Colors.white, // <-- SEE HERE
        statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
        statusBarBrightness: Brightness.light,),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white, // <-- SEE HERE
            statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
            statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
          ),
          backgroundColor: AppColors.whiteColor,
          elevation: 0.0,
          title: Text(
            "Profile".toUpperCase(),
            style: CustomWidget(context: context).CustomSizedTextStyle(
                16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
          child: Column(
            children: [
              SizedBox(height: 15.0,),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.12,
                            padding : EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Image.asset("assets/images/group.png",
                              height: 30.0,),
                          ),
                          SizedBox(width: 15.0,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Caption Jack",
                                textAlign: TextAlign.start,
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    18.0,
                                    AppColors.blackColor,
                                    FontWeight.w600,
                                    'FontRegular'),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "caribbean king",
                                    textAlign: TextAlign.start,
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                        14.0,
                                        AppColors.hintColor,
                                        FontWeight.w600,
                                        'FontRegular'),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(width: 8.0,),
                                  Icon(Icons.copy,
                                  color: Colors.grey,
                                    size: 14.0,
                                  )
                                ],
                              )

                            ],
                          ),
                        ],
                      ),
                    ),
                    Flexible(child: Text(
                      "Edit Profile".toUpperCase(),
                      textAlign: TextAlign.start,
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          12.0,
                          AppColors.hintColor,
                          FontWeight.w600,
                          'FontRegular'),
                    ),)
                  ],
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              Container(
                height: 1.0,
                color: Colors.black12,
              ),

              SizedBox(
                height: 40.0,
              ),

              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/menu/Id.svg",
                            height: 25.0,),
                          SizedBox(width: 10.0,),

                          Text(
                            "ID Verification",
                            textAlign: TextAlign.start,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                16.0,
                                AppColors.blackColor,
                                FontWeight.w600,
                                'FontRegular'),
                          ),
                        ],
                      ),
                    ),
                    Flexible(child: Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                      size: 20.0,
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),

              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/menu/Support_Life.svg",
                            height: 25.0,),
                          SizedBox(width: 10.0,),

                          Text(
                            "Support",
                            textAlign: TextAlign.start,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                16.0,
                                AppColors.blackColor,
                                FontWeight.w600,
                                'FontRegular'),
                          ),
                        ],
                      ),
                    ),
                    Flexible(child: Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                      size: 20.0,
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),

              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/menu/ticket.svg",
                            height: 25.0,),
                          SizedBox(width: 10.0,),

                          Text(
                            "Platinum Membership",
                            textAlign: TextAlign.start,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                16.0,
                                AppColors.blackColor,
                                FontWeight.w600,
                                'FontRegular'),
                          ),
                        ],
                      ),
                    ),
                    Flexible(child: Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                      size: 20.0,
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),

              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/menu/add-user.svg",
                            height: 25.0,),
                          SizedBox(width: 10.0,),

                          Text(
                            "Add shared lisiting",
                            textAlign: TextAlign.start,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                16.0,
                                AppColors.blackColor,
                                FontWeight.w600,
                                'FontRegular'),
                          ),
                        ],
                      ),
                    ),
                    Flexible(child: Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                      size: 20.0,
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),

              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/menu/Pen.svg",
                            height: 25.0,),
                          SizedBox(width: 10.0,),

                          Text(
                            "Set up PIN",
                            textAlign: TextAlign.start,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                16.0,
                                AppColors.blackColor,
                                FontWeight.w600,
                                'FontRegular'),
                          ),
                        ],
                      ),
                    ),
                    Flexible(child: Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                      size: 20.0,
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
