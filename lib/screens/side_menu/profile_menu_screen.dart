import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/screens/side_menu/chat_menu_screen.dart';
import 'package:rabbit/screens/side_menu/property_acknowledge_screen.dart';
import 'package:rabbit/screens/side_menu/property_owner_screen.dart';
import 'package:rabbit/screens/side_menu/sellers_terms_screen.dart';
import 'package:rabbit/screens/side_menu/wallet_setup_screen.dart';

class ProfileMenu_Screen extends StatefulWidget {
  const ProfileMenu_Screen({Key? key}) : super(key: key);

  @override
  State<ProfileMenu_Screen> createState() => _ProfileMenu_ScreenState();
}

class _ProfileMenu_ScreenState extends State<ProfileMenu_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
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
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
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
                                      FontWeight.w500,
                                      'FontRegular'),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(width: 8.0,),
                                Icon(Icons.copy,
                                color: Colors.black,
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
                        11.0,
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
              height: 30.0,
            ),

            InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              Sellers_Terms_Screen()));
                });

              },
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
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
                                FontWeight.w500,
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
            ),
            SizedBox(
              height: 15.0,
            ),

            InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              Property_Acknowledge_Screen()));
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
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
                                FontWeight.w500,
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
            ),
            SizedBox(
              height: 15.0,
            ),

            InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              Property_Owner_Screen()));
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
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
                                FontWeight.w500,
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
            ),
            SizedBox(
              height: 15.0,
            ),

            InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              Chat_Menu_Screen()));
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
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
                                FontWeight.w500,
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
            ),
            SizedBox(
              height: 15.0,
            ),

            InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              Wallet_Setup_Screen()));
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
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
                                FontWeight.w500,
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
            ),
            SizedBox(
              height: 20.0,
            ),


          ],
        ),
      ),
    );
  }
}
