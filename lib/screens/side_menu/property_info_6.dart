import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/screens/side_menu/property_info_8.dart';

class PropertyInfo_Screen6 extends StatefulWidget {
  const PropertyInfo_Screen6({Key? key}) : super(key: key);

  @override
  State<PropertyInfo_Screen6> createState() => _PropertyInfo_Screen6State();
}

class _PropertyInfo_Screen6State extends State<PropertyInfo_Screen6> {

  String? accept;
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
                "Do you have a survey document?",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    15.0,
                    AppColors.blackColor,
                    FontWeight.w500,
                    'FontRegular'),
              ),
              SizedBox(
                height: 10.0,
              ),

              Theme(data: ThemeData(
                primarySwatch: Colors.yellow,
                unselectedWidgetColor: Colors.grey, // Your color
              ),
                child: RadioListTile(
                  title: Text("Yes",
                    textAlign: TextAlign.start,
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        Colors.black,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                  value: "yes",
                  groupValue: accept,
                  onChanged: (value){
                    setState(() {
                      accept = value.toString();
                    });
                  },
                ),),

              Theme(data: ThemeData(
                primarySwatch: Colors.yellow,
                unselectedWidgetColor: Colors.grey, // Your color
              ),
                child: RadioListTile(
                  title: Text("No",
                    textAlign: TextAlign.start,
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        Colors.black,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                  value: "no",
                  groupValue: accept,
                  onChanged: (value){
                    setState(() {
                      accept = value.toString();
                    });
                  },
                ),),

              SizedBox(
                height: 25.0,
              ),
              Container(
                height: 250.0,
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                PropertyInfo_Screen8()));
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
