import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/textformfield_custom.dart';

class Recovery_Pharse2 extends StatefulWidget {
  const Recovery_Pharse2({Key? key}) : super(key: key);

  @override
  State<Recovery_Pharse2> createState() => _Recovery_Pharse2State();
}

class _Recovery_Pharse2State extends State<Recovery_Pharse2> {

  FocusNode addressFocus = FocusNode();
  TextEditingController addressController = TextEditingController();

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
      body:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.0,),
                  Text(
                    "Your Recovery Phrase",
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
                    "Enter your recovery phrase (usually 12 words) in the correct order. Separate each word with a single space only (no commas or any other punctuation)",
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
                        "Recovery Pharse ",
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
                          // FocusScope.of(context).requestFocus(zipFocus);
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
                      SizedBox(
                        height: 25.0,
                      ),

                    ],
                  )),
                ],
              ),
            ),

            SizedBox(
              height: 25.0,
            ),

            InkWell(
              onTap: (){
                setState(() {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             PropertyInfo_Screen2()));
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
                    "Import wallet",
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

            SizedBox(
              height: 5.0,
            ),
          ],

        ),
      ),
    );
  }
}
