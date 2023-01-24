import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class PhraseConfirm extends StatefulWidget {
  const PhraseConfirm({Key? key}) : super(key: key);

  @override
  State<PhraseConfirm> createState() => _PhraseConfirmState();
}

class _PhraseConfirmState extends State<PhraseConfirm> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        child: Stack(
          children: [
             phraseUI(),
          ],
        ),
      ),
    );
  }

 Widget phraseUI(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 25.0),
              Image.asset("assets/others/phrase.png",height: 150.0,width: 150.0),
              SizedBox(height: 25.0),
              Text(
                AppLocalizations.instance.text("loc_phrase_verified"),
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    24.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),

              ),
              SizedBox(height: 25.0),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.value,
                    checkColor: Colors.white,
                    activeColor: AppColors.appColor,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ), //Checkbox
                  SizedBox(
                    width: 5.0,
                  ), //SizedBox
                  Text(
                    'I acknowledge and accept the wallet terms of use',
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w400,
                        'FontRegular'),
                  ), //Text
                  SizedBox(width: 10), //SizedBox
                  /** Checkbox Widget **/

                ], //<Widget>[]
              ), //Row
              SizedBox(height: 15.0),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.value1,
                    checkColor: Colors.white,
                    activeColor: AppColors.appColor,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value1 = value!;
                      });
                    },
                  ), //Checkbox
                  SizedBox(
                    width: 5.0,
                  ), //SizedBox
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'I understand my digital assets are held and \n controlled on this device.Rabbit has no custody \n access or control over my asset.',
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          14.0,
                          AppColors.blackColor,
                          FontWeight.w400,
                          'FontRegular'),
                      textAlign: TextAlign.start,
                    ),
                  ), //Text
                  SizedBox(width: 10), //SizedBox
                  /** Checkbox Widget **/

                ], //<Widget>[]
              ), //Row
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.value2,
                    checkColor: Colors.white,
                    activeColor: AppColors.appColor,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value2 = value!;
                      });
                    },
                  ), //Checkbox
                  SizedBox(
                    width: 5.0,
                  ), //SizedBox
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Rabbit can never recover my assets for me.it is \nmy responsibility to maintain my 12 words recovery \nphrase. If I lose my recovery phrase,I it can\'t be\nrecovered',
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          14.0,
                          AppColors.blackColor,
                          FontWeight.w400,
                          'FontRegular'),
                      textAlign: TextAlign.start,
                    ),
                  ), //Text
                  SizedBox(width: 10), //SizedBox
                  /** Checkbox Widget **/

                ], //<Widget>[]
              ), //Row
            ],
          ),
        InkWell(
          onTap: () {
            if (value&&value1) {
              setState(() {

              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    "Please accept terms of passphrase",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        14.0,
                        AppColors.whiteColor,
                        FontWeight.w600,
                        'FontRegular'),
                  )));
            }
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 15.0,
              bottom: 15.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: AppColors.appColor,
            ),
            child: Text(
                  AppLocalizations.instance.text("loc_agree_continue"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  16.0,
                  AppColors.blackColor,
                  FontWeight.w600,
                  'FontRegular'),
              textAlign: TextAlign.center,
            ),
          ),
        ),

      ],
    );

  }

}
