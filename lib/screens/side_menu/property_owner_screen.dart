import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/side_menu/property_info_1.dart';

class Property_Owner_Screen extends StatefulWidget {
  const Property_Owner_Screen({Key? key}) : super(key: key);

  @override
  State<Property_Owner_Screen> createState() => _Property_Owner_ScreenState();
}

class _Property_Owner_ScreenState extends State<Property_Owner_Screen> {


  FocusNode nameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();


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
                "Provide Other Property Owner's Information",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    28.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "If there are multiple owners of the property, enter their names and contact information here.",
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
                   "Legal name ",
                   style: CustomWidget(context: context)
                       .CustomSizedTextStyle(
                       16.0,
                       AppColors.blackColor,
                       FontWeight.w500,
                       'FontRegular'),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 TextFormFieldCustom(
                   onEditComplete: () {
                     nameFocus.unfocus();
                     FocusScope.of(context).requestFocus(emailFocus);
                   },
                   radius: 20.0,
                   error: "Enter Legal Name",
                   textColor: AppColors.blackColor,
                   borderColor: AppColors.hintColor.withOpacity(0.2),
                   fillColor: AppColors.whiteColor,
                   hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                       15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                   textStyle: CustomWidget(context: context).CustomTextStyle(
                       AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                   textInputAction: TextInputAction.next,
                   focusNode: nameFocus,
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
                       return "Please enter legal name";
                     }
                     return null;
                   },
                   enabled: true,
                   textInputType: TextInputType.emailAddress,
                   controller: nameController,
                 ),
                 const SizedBox(
                   height: 25.0,
                 ),

                 Text(
                   "Active email",
                   style: CustomWidget(context: context)
                       .CustomSizedTextStyle(
                       16.0,
                       AppColors.blackColor,
                       FontWeight.w500,
                       'FontRegular'),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 TextFormFieldCustom(
                   onEditComplete: () {
                     emailFocus.unfocus();
                   },
                   radius: 20.0,
                   error: "Enter Legal Name",
                   textColor: AppColors.blackColor,
                   borderColor: AppColors.hintColor.withOpacity(0.2),
                   fillColor: AppColors.whiteColor,
                   hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                       15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                   textStyle: CustomWidget(context: context).CustomTextStyle(
                       AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                   textInputAction: TextInputAction.next,
                   focusNode: emailFocus,
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
                       return "Please enter email";
                     }else if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                         .hasMatch(value)) {
                       return "Please enter valid email";
                     }
                     return null;
                   },
                   enabled: true,
                   textInputType: TextInputType.emailAddress,
                   controller: emailController,
                 ),
                 SizedBox(
                   height: 20.0,
                 ),

                 InkWell(
                   onTap: (){
                     setState(() {
                       // Navigator.of(context).push(
                       //     MaterialPageRoute(
                       //         builder: (context) =>
                       //             CongratsScreen()));
                     });
                   },
                   child: Container(
                     padding: EdgeInsets.fromLTRB(5.0, 12.0, 5.0, 12.0),
                     decoration: BoxDecoration(
                       color: AppColors.whiteColor,
                       border: Border.all(
                           color: AppColors.blackColor
                       ),
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     child: Center(
                       child: Text(
                         "Add Owner",
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
             )),
              Container(
                height: 60.0,
              ),

              SizedBox(
                height: 15.0,
              ),

              Text(
                "List of Owners".toUpperCase(),
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    15.0,
                    AppColors.blackColor,
                    FontWeight.w700,
                    'FontRegular'),
              ),
              Container(
                height: 100.0,
              ),

              SizedBox(
                height: 15.0,
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                PropertyInfo_Screen1()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5.0, 12.0, 5.0, 12.0),
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
                          16.0,
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
