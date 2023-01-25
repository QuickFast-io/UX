import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/screens/business/business_info_1.dart';
import 'package:rabbit/screens/individual/individual_screen.dart';

class BusinessInfo_Screen extends StatefulWidget {
  const BusinessInfo_Screen({Key? key}) : super(key: key);

  @override
  State<BusinessInfo_Screen> createState() => _BusinessInfo_ScreenState();
}

class _BusinessInfo_ScreenState extends State<BusinessInfo_Screen> {

  String? accept;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        // shape: Border(
        //     bottom: BorderSide(
        //         color: AppColors.appColor,
        //         width: 2.0
        //     )
        // ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0.15,
        leading: Padding(
            padding:
            EdgeInsets.only(left: 2.0, bottom: 5.0, top: 5.0, right: 2.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: AppColors.blackColor,

              ),
            )),
        centerTitle: true,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/others/logo.png",
              color: AppColors.appColor,
              height: 22,),
            SizedBox(width: 5.0,),
            Text(
              "Rabbit",
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
            ),
          ],
        ),
        //
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 15.0,),

                  Text(
                    "Is this for a business or personal?",
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

                  Theme(data: ThemeData(
                    primarySwatch: Colors.yellow,
                    unselectedWidgetColor: Colors.grey, // Your color
                  ),
                    child: RadioListTile(
                      title: Text("Individual",
                        textAlign: TextAlign.start,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            15.0,
                            Colors.black,
                            FontWeight.w600,
                            'FontRegular'),
                      ),
                      value: "individual",
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
                      title: Text("Business",
                        textAlign: TextAlign.start,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            15.0,
                            Colors.black,
                            FontWeight.w600,
                            'FontRegular'),
                      ),
                      value: "business",
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
                ],
              ),
            ),
            Container(
              height: 50.0,
            ),
            InkWell(
              onTap: (){
                setState(() {
                 if(accept == "individual"){
                   setState(() {
                     Navigator.of(context).push(
                         MaterialPageRoute(
                             builder: (context) =>
                                 Individual_Screen()));
                   });

                 }else if(accept == "business"){
                   setState(() {
                     Navigator.of(context).push(
                         MaterialPageRoute(
                             builder: (context) =>
                                 BusinessInfo_Screen1()));
                   });

                 } else{

                 }
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

            SizedBox(height: 10.0,)
          ],

        ),
      ),
    );
  }
}
