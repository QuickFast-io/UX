import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_stepper/easy_stepper.dart';
import 'package:rabbit/common/custom_stepper/src/core/base_step.dart';
import 'package:rabbit/common/custom_stepper/src/core/easy_dotted_line.dart';
import 'package:rabbit/common/custom_stepper/src/easy_step.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/home/phrase_confirm.dart';

class Passphrase extends StatefulWidget {
  const Passphrase({Key? key}) : super(key: key);

  @override
  State<Passphrase> createState() => _PassphraseState();
}

class _PassphraseState extends State<Passphrase> {
  bool checkedValue = false;
  bool proceedValue = false;
  List<TextEditingController> phrasetext = [];
  int currentStep = 0;
  int _processIndex = 0;
  List<String> passPhrase = [
    "agent",
    "edit",
    "send",
    "amount",
    "deer",
    "update",
    "kitchen",
    "giggle",
    "rapid",
    "goat",
    "fragile",
    "radar"
  ];


  List<Step> getSteps() {
    return <Step>[
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: SizedBox(),
        content: SizedBox(),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: SizedBox(),
        content: SizedBox(),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: SizedBox(),
        content: SizedBox(),
      ),
    ];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _processIndex = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            setState(() {
              if (proceedValue) {
                proceedValue = false;
                _processIndex = 2;
              } else {
                Navigator.pop(context);
              }
            });
          },
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/others/logo.png",
              width: 24.0,
              height: 24.0,
              color: AppColors.appColor,
            ),
            Text(
              AppLocalizations.instance.text("loc_app_name"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: Stack(
        children: [
          passUI(),
        ],
      ),
    );
  }

  passUI() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          EasyStepper(
            activeStep: _processIndex,
            lineLength: 80,
            lineType: LineType.normal,
            lineColor: AppColors.appColor,
            stepShape: StepShape.circle,
            stepBorderRadius: 15,
            borderThickness: 5,
            padding: 10,
            stepRadius: 24,
            disableScroll: true,
            unreachedStepBackgroundColor: Colors.transparent,
            unreachedStepBorderColor: Colors.black,
            unreachedStepIconColor: Colors.black,
            unreachedStepTextColor: Colors.black,
            finishedStepBorderColor: AppColors.appColor,
            finishedStepTextColor: AppColors.blackColor,
            finishedStepBackgroundColor: AppColors.appColor,
            activeStepIconColor: AppColors.blackColor,
            finishedStepIconColor: AppColors.blackColor,
            activeStepTextColor: AppColors.blackColor,
            activeStepBorderColor: AppColors.appColor,
            loadingAnimation: 'assets/loading_circle.json',
            steps: const [
              EasyStep(
                icon: "1",
                activeIcon: "1",
                title: 'Create Wallet',
              ),
              EasyStep(
                icon:"2",
                activeIcon: "2",
                title: 'Secure Wallet',
              ),
              EasyStep(
                icon: "3",
                activeIcon: "3",
                title: 'Confirm Wallet',
              ),
            ],
            onStepReached: (index) => setState(() {
              print(index);

            }
           ),
          ),
          /*Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.appColor,
                    ),
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "1",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(14.0, AppColors.blackColor,
                              FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 110.0,
                    height: 1.5,
                    color: AppColors.appColor,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.appColor,
                    ),
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "2",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(14.0, AppColors.blackColor,
                              FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 110.0,
                    height: 1.5,
                    color: proceedValue ? AppColors.appColor : Colors.black,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black),
                    ),
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "3",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(14.0, AppColors.blackColor,
                              FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Create \n Wallet",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(12.0, AppColors.blackColor,
                              FontWeight.w400, 'FontRegular'),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "Secure \n Wallet",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(12.0, AppColors.blackColor,
                              FontWeight.w400, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Confirm \n Wallet",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(12, AppColors.blackColor,
                              FontWeight.w400, 'FontRegular'),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
            ],
          ),*/
          SizedBox(
            height: 25.0,
          ),
          Expanded(
              child: proceedValue ? confirmUI() : setPassUI()),
          SizedBox(
            height: 25.0,
          ),
          InkWell(
            onTap: () {
              if (checkedValue) {
                setState(() {
                  proceedValue = true;
                  _processIndex = 3;
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PhraseConfirm()));
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
                !proceedValue
                    ? AppLocalizations.instance.text("loc_proceed")
                    : AppLocalizations.instance.text("loc_confirm"),
                style: CustomWidget(context: context).CustomSizedTextStyle(
                    16.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
        ],
      ),
    );
  }

  Widget setPassUI() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text(
              AppLocalizations.instance.text("loc_phrase_title"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  24.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Text(
              AppLocalizations.instance.text("loc_phrase_description"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  14.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35.0,
            ),
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: passPhrase.length,
              itemBuilder: (BuildContext context, index) {
                int sno = index + 1;
                return Container(
                  padding: EdgeInsets.only(
                      top: 3.0, bottom: 3.0, right: 5.0, left: 5.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFf8f8f8),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    sno.toString() + ". " + passPhrase[index],
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        12.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFfdf9c9),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                padding: EdgeInsets.only(
                    top: 8.0, bottom: 8.0, right: 25.0, left: 25.0),
                child: Row(
                  children: [
                    Text(
                      "Copy",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          14.0,
                          AppColors.blackColor,
                          FontWeight.w600,
                          'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.content_copy_outlined,
                      color: Colors.black.withOpacity(0.8),
                      size: 12.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 8.0, bottom: 8.0, right: 25.0, left: 25.0),
                decoration: BoxDecoration(
                  color: Color(0xFFfdf9c9),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Row(
                  children: [
                    Text(
                      "View QR",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          14.0,
                          AppColors.blackColor,
                          FontWeight.w600,
                          'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.qr_code_outlined,
                      color: Colors.black.withOpacity(0.8),
                      size: 12.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            children: <Widget>[
              Checkbox(
                value: this.checkedValue,
                checkColor: Colors.white,
                activeColor: AppColors.appColor,
                onChanged: (bool? value) {
                  setState(() {
                    this.checkedValue = value!;
                  });
                },
              ), //Checkbox
              SizedBox(
                width: 5.0,
              ), //SizedBox
              Text(
                AppLocalizations.instance.text("loc_phrase_check_txt"),
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    12.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ), //Text
              SizedBox(width: 10), //SizedBox
              /** Checkbox Widget **/

            ], //<Widget>[]
          ),
         /* CheckboxListTile(
            title: Transform.translate(
              offset: const Offset(-20, 0),
              child: Text(
                AppLocalizations.instance.text("loc_phrase_check_txt"),
                style: CustomWidget(context: context).CustomSizedTextStyle(
                    12.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
                textAlign: TextAlign.start,
              ),
            ),
            checkColor: Colors.black,
            value: checkedValue,
            onChanged: (bool? newValue) {
              setState(() {
                checkedValue = newValue!;
              });
            },
            activeColor: AppColors.appColor,
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          ),*/
        ],
      ),
    );
  }

  Widget confirmUI() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Text(
              AppLocalizations.instance.text("loc_confirm_phrase_title"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  24.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Text(
              AppLocalizations.instance.text("loc_confirm_phrase_description"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  14.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35.0,
            ),
            child: GridView.builder(
              padding: EdgeInsets.zero,
              physics: ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (BuildContext context, index) {
                phrasetext.add(new TextEditingController());
                int sno = index + 1;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        sno.toString() + ".",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(12.0, AppColors.blackColor,
                                FontWeight.w600, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                            right: 15.0, left: 15.0, bottom: 5.0, top: 5.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFf8f8f8),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextField(
                          controller: phrasetext[index],
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(12.0, AppColors.blackColor,
                                  FontWeight.w600, 'FontRegular'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      flex: 4,
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35.0,
            ),
            child: GridView.builder(
              padding: EdgeInsets.zero,
              physics: ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              shrinkWrap: true,
              itemCount: passPhrase.length,
              itemBuilder: (BuildContext context, index) {
                int sno = index + 1;
                return Container(
                  padding: EdgeInsets.only(
                      top: 3.0, bottom: 3.0, right: 5.0, left: 5.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFf8f8f8),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    sno.toString() + ". " + passPhrase[index],
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        12.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
