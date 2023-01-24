import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/property/property_info_7.dart';
import 'package:rabbit/screens/side_menu/profile_menu_screen.dart';

class PropertyInfo_Screen6 extends StatefulWidget {
  const PropertyInfo_Screen6({Key? key}) : super(key: key);

  @override
  State<PropertyInfo_Screen6> createState() => _PropertyInfo_Screen6State();
}

class _PropertyInfo_Screen6State extends State<PropertyInfo_Screen6> {

  FocusNode expireDateFocus = FocusNode();
  FocusNode occupiedDateFocus = FocusNode();
  FocusNode pRentFocus = FocusNode();
  FocusNode tRentFocus = FocusNode();
  TextEditingController sPriceController = TextEditingController();
  TextEditingController occupiedDateController = TextEditingController();
  TextEditingController expireDateController = TextEditingController();
  TextEditingController pRentController = TextEditingController();
  TextEditingController tRentController = TextEditingController();


  List _selectedProperty = [
    "1 BHK","2 BHK", "3 BHK","Ground Floor",
  ];
  String seectedValue= "";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    seectedValue = _selectedProperty.first;
  }


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
          InkWell(
            onTap: (){
             Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(1.0, 0.0, 15.0, 0.0),
              child:  Center(
                child: Text(
                  "Cancel",
                  style: CustomWidget(context: context).CustomSizedTextStyle(
                      15.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                ),
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
                "Provide Property Occupant Details",
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
                "Provide details about the current occupants of the property and relevant info.",
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
                    "Current Occupant ",
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
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.hintColor.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    child: DropdownButton(
                      underline: Container(
                        height: 0.0,
                      ),
                      menuMaxHeight: MediaQuery.of(context).size.height * 0.7,
                      items: _selectedProperty
                          .map((value) => DropdownMenuItem(
                        child: Text(
                          value.toString(),
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              14.0,
                              AppColors.blackColor,
                              FontWeight.w500,
                              'FontRegular'),
                        ),
                        value: value,
                      ))
                          .toList(),
                      onChanged: (value) async {
                        setState(() {
                          seectedValue=value.toString();

                        });
                      },
                      hint: Text(
                        "Occupied Since",
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            12.0,
                            Theme.of(context).errorColor,
                            FontWeight.w500,
                            'FontRegular'),
                      ),
                      isExpanded: true,
                      value: seectedValue,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        // color: AppColors.otherTextColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    "Occupied Since",
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
                      occupiedDateFocus.unfocus();
                      FocusScope.of(context).requestFocus(expireDateFocus);
                    },
                    radius: 20.0,
                    error: "Enter Occupied Details",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: occupiedDateFocus,
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
                        return "Please enter Occupied Details";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.datetime,
                    controller: occupiedDateController,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    "Lease expiration Date",
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
                      expireDateFocus.unfocus();
                      FocusScope.of(context).requestFocus(pRentFocus);
                    },
                    radius: 20.0,
                    error: "Enter Lease Expire Details",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: expireDateFocus,
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
                        return "Please enter Lease Expire Details";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.datetime,
                    controller: expireDateController,
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    "Projected rent for this year(\$USD)",
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
                      pRentFocus.unfocus();
                      FocusScope.of(context).requestFocus(tRentFocus);
                    },
                    radius: 20.0,
                    error: "Enter Project Rent",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: pRentFocus,
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
                        return "Enter Project Rent for this Year";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.number,
                    controller: pRentController,
                  ),

                  SizedBox(
                    height: 20.0,
                  ),


                  Text(
                    "Total rent from last year(\$USD)",
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
                      tRentFocus.unfocus();
                    },
                    radius: 20.0,
                    error: "Enter Total Rent for last year",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: tRentFocus,
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
                        return "Enter Total Rent for last year";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.number,
                    controller: tRentController,
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
                                PropertyInfo_Screen7()));
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
