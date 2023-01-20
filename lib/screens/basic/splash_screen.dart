
import 'package:rabbit/screens/basic/register_screen.dart';
import 'package:flutter/material.dart';

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
            SizedBox(
              height: 50.0,
            ),
            Image.asset('assets/images/logo.png', height: 150.0,),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 35.0, right: 35.0),
              child: Text(
                "",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    40.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),

            InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              RegisterScreen()));
                });
              },
              child: Container(
                height: 45.0,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.instance.text("loc_create_acc"),
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
            SizedBox(height: 40.0,),
            InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              LoginScreen()));
                });
              },
              child: Container(
                height: 45.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.instance.text("loc_have_acc"),
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

            const SizedBox(
              height: 30.0,
            ),

          ],
        ),
      )
    );
  }
}
