import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/side_menu/property_info_3.dart';

class PropertyInfo_Screen2 extends StatefulWidget {
  const PropertyInfo_Screen2({Key? key}) : super(key: key);

  @override
  State<PropertyInfo_Screen2> createState() => _PropertyInfo_Screen2State();
}

class _PropertyInfo_Screen2State extends State<PropertyInfo_Screen2> {


  FocusNode bedroomFocus = FocusNode();
  FocusNode bathroomFocus = FocusNode();
  FocusNode yearbuildFocus = FocusNode();
  FocusNode squareFocus = FocusNode();
  FocusNode garagesFocus = FocusNode();
  TextEditingController bedroomController = TextEditingController();
  TextEditingController bathroomController = TextEditingController();
  TextEditingController yearbuildController = TextEditingController();
  TextEditingController squareController = TextEditingController();
  TextEditingController garagesController = TextEditingController();

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
                "Provide More \nProperty Details",
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
                "Please provide the following information",
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
                    "Property Type",
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
                        "Select Category",
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
                  const SizedBox(
                    height: 25.0,
                  ),

                  Text(
                    "Bedroom ",
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
                      bedroomFocus.unfocus();
                      FocusScope.of(context).requestFocus(bathroomFocus);
                    },
                    radius: 20.0,
                    error: "Enter Room Details",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: bedroomFocus,
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
                        return "Please enter Room Details";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.number,
                    controller: bedroomController,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    "Bathroom ",
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
                      bathroomFocus.unfocus();
                      FocusScope.of(context).requestFocus(yearbuildFocus);
                    },
                    radius: 20.0,
                    error: "Enter Bathroom Details",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: bathroomFocus,
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
                        return "Please enter Bathroom Details";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.number,
                    controller: bathroomController,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    "Year Built",
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
                      yearbuildFocus.unfocus();
                      FocusScope.of(context).requestFocus(squareFocus);
                    },
                    radius: 20.0,
                    error: "Enter Year Build",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: yearbuildFocus,
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
                        return "Please enter Year Build";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.number,
                    controller: yearbuildController,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    "Square Footage",
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
                      squareFocus.unfocus();
                      FocusScope.of(context).requestFocus(garagesFocus);
                    },
                    radius: 20.0,
                    error: "Enter Square Footage",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: squareFocus,
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
                        return "Please enter Square Footage";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.name,
                    controller: squareController,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    "No.of Garages",
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
                      garagesFocus.unfocus();
                    },
                    radius: 20.0,
                    error: "Enter No.of Garages",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: garagesFocus,
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
                        return "Please enter No.of Garages";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.number,
                    controller: garagesController,
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
                                PropertyInfo_Screen3()));
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
