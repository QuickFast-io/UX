import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class CongratsScreen extends StatefulWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.backgroundColor,
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/others/logo.png', height: 80.0,),
                SizedBox(height: 15.0,),
                Text(
                  AppLocalizations.instance.text("loc_congrats"),
                  style: CustomWidget(context: context)
                      .CustomSizedTextStyle(
                      28.0,
                      AppColors.blackColor,
                      FontWeight.w600,
                      'FontRegular'),

                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35.0,left: 35.0,top: 15.0),
                  child: Text(
                    AppLocalizations.instance.text("loc_congrats_description"),
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        Color(0xFFb8b8b8),
                        FontWeight.w600,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: (){
                setState(() {
                  /* Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                RegisterScreen()));*/
                });
              },
              child: Container(
                height: 45.0,
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.instance.text("loc_continue"),
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
