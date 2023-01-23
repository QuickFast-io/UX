import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/screens/property/property_owner_screen.dart';

class Property_Acknowledge_Screen extends StatefulWidget {
  const Property_Acknowledge_Screen({Key? key}) : super(key: key);

  @override
  State<Property_Acknowledge_Screen> createState() => _Property_Acknowledge_ScreenState();
}

class _Property_Acknowledge_ScreenState extends State<Property_Acknowledge_Screen> {

  bool accept = false;
  bool acknowledge = false;

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
                "Acknowledge".toUpperCase(),
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    13.0,
                    AppColors.hintColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Property Listing \nConfirmed",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    28.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Thank you for lisiting your property on Rabbit.",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    AppColors.blackColor,
                    FontWeight.w500,
                    'FontRegular'),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Please not that all transactions and agreements made through our platform are subject to applicable laws and regulations.",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    AppColors.blackColor,
                    FontWeight.w500,
                    'FontRegular'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "It is your responsibility to ensure that you are in compliance with all relevant laws and regulations, including but not limited to tax laws and real estate regulations.",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    AppColors.blackColor,
                    FontWeight.w500,
                    'FontRegular'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "If you have any questions or need assistance, please don't hesitate to reach out to our support team. We wish you the best of luck in finding a buyer for your property",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    AppColors.blackColor,
                    FontWeight.w500,
                    'FontRegular'),
              ),
              SizedBox(
                height: 20.0,
              ),

              Container(
                height: 40.0,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Theme(data: ThemeData(
                    primarySwatch: Colors.yellow,
                    unselectedWidgetColor: Colors.grey, // Your color
                  ),
                      child: Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        value: accept,
                        onChanged: (bool? value) {
                          setState(() {
                            accept = value!;
                          });
                        },
                      )),
                  Flexible(child: Text(
                    "I acknowledge that i have the complete rights to sell this property.",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        12.0,
                        Colors.black,
                        FontWeight.w500,
                        'FontRegular'),

                  ),)

                  //Checkbox
                ],
              ),

              SizedBox(
                height: 15.0,
              ),

             Container(
               width: MediaQuery.of(context).size.width,
               child:  Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Theme(data: ThemeData(
                     primarySwatch: Colors.yellow,
                     unselectedWidgetColor: AppColors.hintColor, // Your color
                   ),
                       child: Checkbox(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(5.0),
                         ),
                         value: acknowledge,
                         onChanged: (bool? value) {
                           setState(() {
                             acknowledge = value!;
                           });
                         },
                       )),
                   Flexible(child: Text(
                     "I confirm that i have read the Terms of Service and that i am held accountable to them.",
                     style: CustomWidget(context: context)
                         .CustomSizedTextStyle(
                         12.0,
                         Colors.black,
                         FontWeight.w500,
                         'FontRegular'),

                   ),)

                   //Checkbox
                 ],
               ),
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
                                Property_Owner_Screen()));
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
                      "List my property",
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
      ),
    );
  }
}
