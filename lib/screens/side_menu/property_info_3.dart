import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/side_menu/property_info_4.dart';

class PropertyInfo_Screen3 extends StatefulWidget {
  const PropertyInfo_Screen3({Key? key}) : super(key: key);

  @override
  State<PropertyInfo_Screen3> createState() => _PropertyInfo_Screen3State();
}

class _PropertyInfo_Screen3State extends State<PropertyInfo_Screen3> {

  FocusNode propertyCommendFocus = FocusNode();
  TextEditingController propertyCommendController = TextEditingController();

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
                "Write Property Description",
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
                "Write a detailed description ofthe property, including its features, layout, and any other important details.",
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
                    "Describe the Property",
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
                      propertyCommendFocus.unfocus();
                    },
                    radius: 20.0,
                    error: "Enter Property Details",
                    textColor: AppColors.blackColor,
                    borderColor: AppColors.hintColor.withOpacity(0.2),
                    fillColor: AppColors.whiteColor,
                    hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                        12.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                    textStyle: CustomWidget(context: context).CustomTextStyle(
                        AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                    textInputAction: TextInputAction.next,
                    focusNode: propertyCommendFocus,
                    maxlines: 20,
                    text: '',
                    hintText: "Discribe the property to a potential buyer",
                    obscureText: false,
                    suffix: Container(
                      width: 0.0,
                    ),
                    textChanged: (value) {},
                    onChanged: () {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter Property Details";
                      }
                      return null;
                    },
                    enabled: true,
                    textInputType: TextInputType.multiline,
                    controller: propertyCommendController,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),


                ],
              )),
              SizedBox(
                height: 40.0,
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                PropertyInfo_Screen4()));
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
