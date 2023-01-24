import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/property/property_info_5.dart';

class PropertyInfo_Screen4 extends StatefulWidget {
  const PropertyInfo_Screen4({Key? key}) : super(key: key);

  @override
  State<PropertyInfo_Screen4> createState() => _PropertyInfo_Screen4State();
}

class _PropertyInfo_Screen4State extends State<PropertyInfo_Screen4> {

  FocusNode sPriceFocus = FocusNode();
  FocusNode eMoneyFocus = FocusNode();
  FocusNode dateFocus = FocusNode();
  TextEditingController sPriceController = TextEditingController();
  TextEditingController eMoneyController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        shape: Border(
            bottom: BorderSide(
                color: AppColors.appColor,
                width: 2.0
            )
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: Padding(
            padding:
            EdgeInsets.only(left: 9.0, bottom: 5.0, top: 5.0, right: 2.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: AppColors.blackColor,

              ),
            )),
        // title: Text(
        //   "Profile".toUpperCase(),
        //   style: CustomWidget(context: context).CustomSizedTextStyle(
        //       16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
        // ),
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(1.0, 0.0, 15.0, 0.0),
            child:  Center(
              child: Text(
                "Cancel",
                style: CustomWidget(context: context).CustomSizedTextStyle(
                    15.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
          color: AppColors.whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.0,),

              Text(
                "Enter Property Pricing Details",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    24.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Enter the sales price for the property, as well as any earnest money requirements or other relevant pricing details.",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    13.0,
                    AppColors.hintColor,
                    FontWeight.w500,
                    'FontRegular'),
              ),
              SizedBox(
                height: 25.0,
              ),
              Form(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sales Price ",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w500,
                        'FontRegular'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormFieldCustom(
                    onEditComplete: () {
                      sPriceFocus.unfocus();
                      FocusScope.of(context).requestFocus(eMoneyFocus);
                    },
                    radius: 20.0,
                    error: "Enter Sales Price",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: sPriceFocus,
                    maxlines: 1,
                    text: '',
                    hintText: " ",
                    obscureText: false,
                    suffix: Container(
                      width: 0.0,
                    ),
                    textChanged: (value) {},
                    onChanged: () {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter Sales Price";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.number,
                    controller: sPriceController,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    "Earnest Money ",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w500,
                        'FontRegular'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormFieldCustom(
                    onEditComplete: () {
                      eMoneyFocus.unfocus();
                    },
                    radius: 20.0,
                    error: "Enter Earnest Money Details",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: eMoneyFocus,
                    maxlines: 1,
                    text: '',
                    hintText: " ",
                    obscureText: false,
                    suffix: Container(
                      width: 0.0,
                    ),
                    textChanged: (value) {},
                    onChanged: () {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter Earnest Money Details";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.number,
                    controller: eMoneyController,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    "Closing Date",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w500,
                        'FontRegular'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormFieldCustom(
                    onEditComplete: () {
                      // yearbuildFocus.unfocus();
                      // FocusScope.of(context).requestFocus(squareFocus);
                    },
                    radius: 20.0,
                    error: "Enter Date Details",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: dateFocus,
                    maxlines: 1,
                    text: '',
                    hintText: "mm/dd/yy",
                    obscureText: false,
                    suffix: Container(
                      child: Icon(
                        Icons.date_range_outlined,
                        size: 20.0,
                        color: AppColors.blackColor,
                      ),
                    ),
                    textChanged: (value) {},
                    onChanged: () {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter Date Details";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.datetime,
                    controller: dateController,
                  ),

                  SizedBox(
                    height: 20.0,
                  ),


                ],
              )),
              Container(
                height: 50.0,
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                PropertyInfo_Screen5()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
                  decoration: BoxDecoration(
                    color: AppColors.appColor,
                    // border: Border.all(
                    //     color: AppColors.blackColor
                    // ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          14.0,
                          AppColors.blackColor,
                          FontWeight.w700,
                          'FontRegular'),
                    ),
                  ),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
