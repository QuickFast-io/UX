import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_switch.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  String switchVal="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,

      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        elevation: 0.5,
        title: Text(
          AppLocalizations.instance.text("loc_wallet"),
          style: CustomWidget(context: context)
              .CustomSizedTextStyle(
              18.0,
              AppColors.blackColor,
              FontWeight.w600,
              'FontRegular'),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            walletUI(),
          ],
        ),
      ),
    );
  }
  walletUI(){
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppLocalizations.instance.text("your balance").toUpperCase(),
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    AppColors.blackColor.withOpacity(0.5),
                    FontWeight.w600,
                    'FontRegular'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "\$ 40,990,245",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        34.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                  Padding(padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    ".67",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),)
                ],
              ),
              SizedBox(height: 10.0,),
            /*  CustomSwitch(

              ),*/

            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 120.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(35.0),topLeft:  Radius.circular(35.0)),
              color: AppColors.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
