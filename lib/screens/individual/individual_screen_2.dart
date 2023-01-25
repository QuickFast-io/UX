import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/individual/individual_screen_3.dart';

class Individual_Screen2 extends StatefulWidget {
  const Individual_Screen2({Key? key}) : super(key: key);

  @override
  State<Individual_Screen2> createState() => _Individual_Screen2State();
}

class _Individual_Screen2State extends State<Individual_Screen2> {

  FocusNode addressFocus = FocusNode();
  FocusNode suiteFocus = FocusNode();
  FocusNode zipFocus = FocusNode();
  TextEditingController addressController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  TextEditingController suiteController = TextEditingController();

  List _selectedCity = [
    "Chennai","Madurai","Ramanathapuram","Trichy","Theni","Thanjavur","Sivagangai","Puthukottai","chengalpat"
  ];

  List _selectedState = [
    "Tamilnadu","Kerala", "Karnadaka","Andhra",
  ];
  String seectedValue= "";
  String seelectedState= "";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    seectedValue = _selectedCity.first;
    seelectedState = _selectedState.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            color: AppColors.appColor,
            width: 2.0,
          ),
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
        title: Text(
          "Individual",
          style: CustomWidget(context: context).CustomSizedTextStyle(
              16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
        ),
        centerTitle: true,
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.0,),

                      Text(
                        "Provide Location Details",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            25.0,
                            AppColors.blackColor,
                            FontWeight.w600,
                            'FontRegular'),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Please provide your location details, including your city, state, zip code, and address.",
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
                            "Address ",
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
                              addressFocus.unfocus();
                              FocusScope.of(context).requestFocus(suiteFocus);
                            },
                            radius: 20.0,
                            error: "Enter address",
                            textColor: AppColors.blackColor,
                            borderColor: AppColors.hintColor.withOpacity(0.2),
                            fillColor: AppColors.whiteColor,
                            hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                                15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                            textStyle: CustomWidget(context: context).CustomTextStyle(
                                AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                            textInputAction: TextInputAction.next,
                            focusNode: addressFocus,
                            maxlines: 5,
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
                                return "Please enter Address";
                              }
                              return null;
                            },
                            enabled: true,
                            textInputType: TextInputType.streetAddress,
                            controller: addressController,
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),

                          Text(
                            "Suite or Number ",
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
                              suiteFocus.unfocus();
                              FocusScope.of(context).requestFocus(zipFocus);
                            },
                            radius: 20.0,
                            error: "Enter Suite or Number",
                            textColor: AppColors.blackColor,
                            borderColor: AppColors.hintColor.withOpacity(0.2),
                            fillColor: AppColors.whiteColor,
                            hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                                15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                            textStyle: CustomWidget(context: context).CustomTextStyle(
                                AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                            textInputAction: TextInputAction.next,
                            focusNode: suiteFocus,
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
                                return "Please enter Suite or Number";
                              }
                              return null;
                            },
                            enabled: true,
                            textInputType: TextInputType.number,
                            controller: suiteController,
                          ),

                          SizedBox(
                            height: 20.0,
                          ),



                          Text(
                            "City",
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
                              items: _selectedCity
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
                          SizedBox(
                            height: 25.0,
                          ),

                          Text(
                            "State ",
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
                              items: _selectedState
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
                                  seelectedState=value.toString();

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
                              value: seelectedState,
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
                            "Zip ",
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
                              zipFocus.unfocus();
                            },
                            radius: 20.0,
                            error: "Enter Zip Code",
                            textColor: AppColors.blackColor,
                            borderColor: AppColors.hintColor.withOpacity(0.2),
                            fillColor: AppColors.whiteColor,
                            hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                                15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                            textStyle: CustomWidget(context: context).CustomTextStyle(
                                AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                            textInputAction: TextInputAction.next,
                            focusNode: zipFocus,
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
                                return "Please enter Zip code";
                              }
                              return null;
                            },
                            enabled: true,
                            textInputType: TextInputType.number,
                            controller: zipController,
                          ),

                          SizedBox(
                            height: 20.0,
                          ),

                        ],
                      )),
                      Container(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              ),


              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                Individual_Screen3()));
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
