import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_switch.dart';
import 'package:rabbit/common/custom_widget.dart';

class Offers_Screen extends StatefulWidget {
  const Offers_Screen({Key? key}) : super(key: key);

  @override
  State<Offers_Screen> createState() => _Offers_ScreenState();
}

class _Offers_ScreenState extends State<Offers_Screen> {


  bool switchButton=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        elevation: 0.5,
        leading: Container(
          height: 0.0,
        ),
        title: Text(
          "Offers",
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding:
              EdgeInsets.only(left: 5.0, bottom: 5.0, top: 5.0, right: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset("assets/menu/leafe.svg",
                  height: 30.0,),
              ))
        ],
      ),
      resizeToAvoidBottomInset: true,
      body: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height,
        ),
        decoration: BoxDecoration(
            color: AppColors.appColor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(
                flex: 1,
                child:Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomSwitch(
                          value: switchButton,
                          activeColor: Colors.black,
                          activeTextColor: Colors.black,
                          activeText: "Offers",
                          inactiveColor: Colors.white,
                          inactiveTextColor: Colors.black,
                          inactiveText: "Listings",
                          onChanged: (test) {
                            setState(() {
                              switchButton = test;
                            });
                          }),
                    ],
                  ),
                )
            ),
            Expanded(
              flex: 5,
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      )),
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  child: SingleChildScrollView(
                    child: switchButton ? Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                          ),
                          SvgPicture.asset("assets/menu/box.svg",
                            height: 100.0,
                          ),

                          SizedBox(
                            height: 20.0,
                          ),

                          Text(
                            "You haven't listed anyproperties, \n but we can fix that.",
                            textAlign: TextAlign.center,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                16.0,
                                AppColors.blackColor,
                                FontWeight.w600,
                                'FontRegular'),
                          ),

                        ],
                      ),
                    ) : Container(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                      ),
                      Image.asset("assets/others/logo.png",
                        height: 100.0,
                      ),

                      SizedBox(
                        height: 30.0,
                      ),

                      Text(
                        "In order to list real estate, \n Rabbit needs to verify \n your identity.",
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            16.0,
                            AppColors.blackColor,
                            FontWeight.w600,
                            'FontRegular'),
                      ),

                      Container(
                        height: 60.0,
                      ),

                      InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Offers_Screen()));
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                          decoration: BoxDecoration(
                            color: AppColors.appColor,
                            // border: Border.all(color: Color(0xFF171717), ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              "Let's Go",
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
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
