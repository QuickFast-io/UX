import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class SellerTerms extends StatefulWidget {
  const SellerTerms({Key? key}) : super(key: key);

  @override
  State<SellerTerms> createState() => _SellerTermsState();
}

class _SellerTermsState extends State<SellerTerms> {
  bool order = false;
  bool orderSurvey = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            setState(() {
                Navigator.pop(context);
            });
          },
        ),
        title:  Text(
          AppLocalizations.instance.text("loc_seller_terms"),
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
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
              )),
        ],
      ),
      body:Stack(
        children: [
          sellerUI(),
        ],
      ),
    );
  }
  Widget sellerUI(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0,bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right:15.0,left: 10.0 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.instance.text("loc_sales_price"),
                              style: CustomWidget(context: context).CustomSizedTextStyle(
                                  14.0,  Color(0xFF343434), FontWeight.w600, 'FontRegular'),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              "\$ 500,000",
                              style: CustomWidget(context: context).CustomSizedTextStyle(
                                  16.0, Color(0xFFbdbdbd), FontWeight.w400, 'FontRegular'),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.instance.text("loc_last_little"),
                              style: CustomWidget(context: context).CustomSizedTextStyle(
                                  14.0,  Color(0xFF343434), FontWeight.w600, 'FontRegular'),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              "12/12/2022",
                              style: CustomWidget(context: context).CustomSizedTextStyle(
                                  16.0, Color(0xFFbdbdbd), FontWeight.w400, 'FontRegular'),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.instance.text("loc_earnest_money"),
                              style: CustomWidget(context: context).CustomSizedTextStyle(
                                  14.0,  Color(0xFF343434), FontWeight.w600, 'FontRegular'),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              "\$ 500",
                              style: CustomWidget(context: context).CustomSizedTextStyle(
                                  16.0, Color(0xFFbdbdbd), FontWeight.w400, 'FontRegular'),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.instance.text("loc_survey_provided"),
                              style: CustomWidget(context: context).CustomSizedTextStyle(
                                  14.0,  Color(0xFF343434), FontWeight.w600, 'FontRegular'),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              "Yes",
                              style: CustomWidget(context: context).CustomSizedTextStyle(
                                  16.0, Color(0xFFbdbdbd), FontWeight.w400, 'FontRegular'),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Checkbox(
                    value: this.order,
                    checkColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                    activeColor: AppColors.appColor,
                    onChanged: (bool? value) {
                      setState(() {
                        this.order = value!;
                      });
                    },
                  ), //Checkbox//SizedBox
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Order Inspection',
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            16.0,
                            AppColors.blackColor,
                            FontWeight.w600,
                            'FontRegular'),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 2.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Last Inspection: 12/12/2022',
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFFbdbdbd),
                                FontWeight.w400,
                                'FontRegular'),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(width: 10.0,),
                          Text(
                            '\$ 5,000 extra',
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Colors.black,
                                FontWeight.w400,
                                'FontRegular'),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ],
                  ),


                ],
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Checkbox(
                    value: this.orderSurvey,
                    checkColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                    activeColor: AppColors.appColor,
                    onChanged: (bool? value) {
                      setState(() {
                        this.orderSurvey = value!;
                      });
                    },
                  ), //Checkbox
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Order Survey',
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            16.0,
                            AppColors.blackColor,
                            FontWeight.w600,
                            'FontRegular'),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 2.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Last Survey: 15/04/2021',
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFFbdbdbd),
                                FontWeight.w400,
                                'FontRegular'),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(width: 10.0,),
                          Text(
                            '\$ 5,000 extra',
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Colors.black,
                                FontWeight.w400,
                                'FontRegular'),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {

            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                top: 15.0,
                bottom: 15.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(color: Colors.black),
                color:Colors.transparent,
              ),
              child: Text(
                AppLocalizations.instance.text("loc_negotiate"),
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
      ),
    );
  }
}
