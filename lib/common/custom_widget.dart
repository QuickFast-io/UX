import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'custom_button.dart';

class CustomWidget {
  final BuildContext context;

  CustomWidget({required this.context});

  //TODO Alert dialog
  showSuccessAlertDialog(
    String title,
    String message,
  ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)), //this right here
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppColors.appColor, AppColors.appColor],
                    begin: Alignment.topRight,
                    //const FractionalOffset(0.0, 0.5),
                    end: Alignment.bottomLeft,
                    //const FractionalOffset(1.0, 0.6),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
              height: MediaQuery.of(context).size.height * 0.30,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title.toUpperCase(),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSansBold',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 7.0, bottom: 10.0),
                      height: 2.0,
                      color: AppColors.whiteColor,
                    ),
                    Text(
                      message,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      child: GestureDetector(
                        child: Container(
                          width: 100,
                          height: 40,
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                          decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [
                                  AppColors.appColor,
                                  AppColors.appColor
                                ],
                                begin: Alignment.topRight,
                                //const FractionalOffset(0.0, 0.5),
                                end: Alignment.bottomLeft,
                                //const FractionalOffset(1.0, 0.6),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "ok".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "OpenSansBold",
                                  color: AppColors.whiteColor),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pop(true);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
    // show the dialog
  }


  Widget loadingIndicator(Color color) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color:  Color(0xFF1d0068),
      child: Center(
        child: Container(
          child: Center(
            child: SpinKitFadingCircle(
              color: color,
            ),
          ),
        ),
      ),
    );
  }

  CustomTextStyle(Color color, FontWeight weight, String family) {
    return GoogleFonts.urbanist(
      color: color,
      fontWeight: weight,
    );
  }

  CustomSizedTextStyle(
      double size, Color color, FontWeight weight, String family) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: size,

      fontWeight: weight,
    );
  }

  Widget noInternet() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color:  Color(0xFF1d0068),
      child: ElevatedButton(
        child: Center(
          child: Container(
            child: Center(child: Image.asset('assets/image/internet.png')),
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget noRecordsFound(String data, Color color) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(data,
            style: TextStyle(
              fontFamily: "FontRegular",
              color: color,
            )),
      ),
    );
  }

  failureDialog(bool type, String title, String message, String ButText) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)), //this right here
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  // ClayContainer(
                  //   emboss: false,
                  //   color: Color(0xFFF2F2F2),
                  //   height: 120.0,
                  //   width: 120.0,
                  //   depth: 100,
                  //   spread: 15.0,
                  //   curveType: CurveType.concave,
                  //   borderRadius: 180,
                  //   child: Container(
                  //       padding: EdgeInsets.all(0.0),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(180),
                  //         gradient: LinearGradient(
                  //           begin: Alignment.topCenter,
                  //           end: Alignment(0.5, 1),
                  //           colors: <Color>[
                  //             Color(0xffffffff),
                  //             Color(0xffffffff),
                  //             Color(0xffffffff),
                  //           ],
                  //           tileMode: TileMode.mirror,
                  //         ),
                  //       ),
                  //       child: Container(
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(180),
                  //             color: Colors.white),
                  //         child: Neumorphic(
                  //             drawSurfaceAboveChild: false,
                  //             padding: EdgeInsets.all(0.0),
                  //             style: NeumorphicStyle(
                  //                 boxShape: NeumorphicBoxShape.circle(),
                  //                 shape: NeumorphicShape.convex,
                  //                 depth: -15,
                  //                 color: Colors.white30),
                  //             child: Container(
                  //               padding: EdgeInsets.all(0.0),
                  //               child: Center(
                  //                 child: Image.asset(
                  //                   type
                  //                       ? 'assets/images/success.png'
                  //                       : 'assets/images/failed.png',
                  //                   height: 190.0,
                  //                 ),
                  //               ),
                  //             )),
                  //       )),
                  // ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    title,
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(24.0, AppColors.blackColor,
                        FontWeight.w700, 'FontRegular'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        message,
                        textAlign: TextAlign.center,
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(15.0, AppColors.blackColor,
                            FontWeight.w500, 'FontRegular'),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0, left: 15.0),
                        child: ButtonCustom(
                            text: ButText,
                            iconEnable: false,
                            radius: 5.0,
                            icon: "",
                            textStyle: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                18.0,
                                AppColors.whiteColor,
                                FontWeight.w600,
                                'FontRegular'),
                            iconColor: AppColors.appColor,
                            buttonColor: AppColors.appColor,
                            splashColor: AppColors.appColor,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            paddng: 1.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ],
              ));
        });
    // show the dialog
  }

  custombar(String title, String message, bool status) {
    var snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: status ? ContentType.success : ContentType.failure,
      ),
    );
    return ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
