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


  bool switchButton=true;

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
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35.0),
                      topLeft: Radius.circular(35.0)),
                  color: AppColors.backgroundColor,
                ),
                child:SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                    children: [
                      switchButton?offersUI():listingUI(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget offersUI(){
    return Container(
      padding: EdgeInsets.all(5.0),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context,index){
            return InkWell(
              onTap: (){

              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        decoration:BoxDecoration(
                          image:DecorationImage(image: AssetImage("assets/others/house.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(5.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: AppColors.appColor,
                            ),
                            padding: EdgeInsets.only(top: 8.0,bottom: 8.0,left: 15.0,right: 15.0),
                            child: Text(
                              "Response required",
                              style: CustomWidget(context: context)
                                  .CustomSizedTextStyle(
                                  12.0,
                                  Colors.black,
                                  FontWeight.w600,
                                  'FontRegular'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/others/bed.png",height: 24.0,width: 24.0),
                          SizedBox(width: 5.0,),
                          Text(
                            "2 bedrooms",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFF696969),
                                FontWeight.w600,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/others/Kitchen.png",height: 24.0,width: 24.0),
                          SizedBox(width: 5.0,),
                          Text(
                            "2 Kitchen",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFF696969),
                                FontWeight.w600,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/others/Bathtub.png",height: 24.0,width: 24.0),
                          SizedBox(width: 5.0,),
                          Text(
                            "4000 Sq Ft",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFF696969),
                                FontWeight.w600,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Exquisitely finished detached 6 \nBedroom mansion",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        24.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "123 Happy Street Alpharetta",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor,
                        FontWeight.w400,
                        'FontRegular'),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "cost : ",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            14.0,
                            Color(0xFF696969),
                            FontWeight.w600,
                            'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "\$ 8,560,000",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            18.0,
                            Colors.black,
                            FontWeight.w700,
                            'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                ],
              ),
            );
          }
      ),
    );
  }

  Widget listingUI(){
    return Container(
      padding: EdgeInsets.all(5.0),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context,index){
            return InkWell(
              onTap: (){

              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250.0,
                    decoration:BoxDecoration(
                      image:DecorationImage(image: AssetImage("assets/others/house.png"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(5.0),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/others/bed.png",height: 24.0,width: 24.0),
                          SizedBox(width: 5.0,),
                          Text(
                            "2 bedrooms",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFF696969),
                                FontWeight.w600,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/others/Kitchen.png",height: 24.0,width: 24.0),
                          SizedBox(width: 5.0,),
                          Text(
                            "2 Kitchen",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFF696969),
                                FontWeight.w600,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/others/Bathtub.png",height: 24.0,width: 24.0),
                          SizedBox(width: 5.0,),
                          Text(
                            "4000 Sq Ft",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFF696969),
                                FontWeight.w600,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Exquisitely finished detached 6 \nBedroom mansion",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        24.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "123 Happy Street Alpharetta",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor,
                        FontWeight.w400,
                        'FontRegular'),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "cost : ",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            14.0,
                            Color(0xFF696969),
                            FontWeight.w600,
                            'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "\$ 8,560,000",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            18.0,
                            Colors.black,
                            FontWeight.w700,
                            'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                ],
              ),
            );
          }
      ),
    );
  }


}
