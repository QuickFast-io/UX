
import 'package:rabbit/screens/wallet/change_pin.dart';
import 'package:rabbit/screens/basic/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/screens/home/coin_detail_page.dart';
import 'package:rabbit/screens/home/pass_phrase.dart';
import 'package:rabbit/screens/home/phrase_confirm.dart';
import 'package:rabbit/screens/home/property_details_screen.dart';
import 'package:rabbit/screens/home/seller_terms.dart';
import 'package:rabbit/screens/wallet/set_pin.dart';
import 'package:rabbit/screens/home/wallet_page.dart';
import 'package:rabbit/screens/side_menu/offers_screen.dart';

import '../../common/colors.dart';
import '../../common/custom_button.dart';
import '../../common/custom_widget.dart';
import '../../common/localization/localizations.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(15.0, 5.0,15.0,15.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color:  AppColors.appColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/others/logo.png', height: 150.0,),
            SizedBox(
              height: 100.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 35.0, right: 35.0,bottom: 25.0),
              child: Text(
                AppLocalizations.instance.text("loc_welcome"),
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    28.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                                    Home_Screen(index: -1,)));
                });
              },
              child: Container(

                padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
                decoration: BoxDecoration(
                  color: Color(0xFF171717),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.instance.text("loc_explore"),
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.whiteColor,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            InkWell(
              onTap: (){
                setState(() {

                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                                    SetpinPage()));

                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Color(0xFF171717), ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.instance.text("loc_create_wallet"),
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
    );
  }
}
