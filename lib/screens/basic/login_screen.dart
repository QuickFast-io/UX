import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_button.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/basic/home_screen.dart';
import 'package:rabbit/screens/basic/register_screen.dart';
import 'package:rabbit/screens/basic/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/custom_widget.dart';
import '../../common/localization/localizations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  bool passVisible = false;
  bool con_passVisible = false;

  FocusNode emailFocus = FocusNode();
  FocusNode passFocus = FocusNode();
  String userID="";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  ScrollController controller = ScrollController();
  final emailformKey = GlobalKey<FormState>();
  var deviceData;

  @override
  void initState() {
    super.initState();
    // getDeviceInfo();
  }


  // getDeviceInfo()async{
  //   DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  //   var deviceDatas;
  //   if (Platform.isAndroid) {
  //     deviceDatas = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
  //   } else if (Platform.isIOS) {
  //     deviceDatas = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
  //   }
  //   OneSignal.shared.setExternalUserId(deviceDatas['device_id']).then((results) {}).catchError((error) {});
  //   setState(() {
  //     deviceData=deviceDatas;
  //   });
  //
  //   OneSignal.shared.getDeviceState().then((deviceState) {
  //
  //
  //
  //     setState(() {
  //       userID=   deviceState!.userId.toString();
  //
  //
  //     });
  //   });
  //
  // }

  // Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
  //   return <String, dynamic>{
  //     'os_version': build.version.release,
  //     'device_model': build.model,
  //     'device_id': build.id,
  //     'deviceos_type': 'android',
  //   };
  // }

  // Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
  //   return <String, dynamic>{
  //     'os_version': data.systemName! + " " + data.systemVersion!,
  //     'device_model': data.name,
  //     'deviceos_type': data.systemName,
  //     'device_id': data.identifierForVendor
  //   };
  // }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          elevation: 0.0,
          leading: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child:Container(
                  padding: EdgeInsets.only( top: 5.0, bottom: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 1.0,
                        color: Color(0xFFEAECF0),
                      )),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
              )),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
          ),
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Text(
                          AppLocalizations.instance.text("loc_welcome"),
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(30.0, AppColors.blackColor,
                              FontWeight.w900, 'FontRegular'),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: AppColors.backgroundColor,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            const SizedBox(
                              height: 50.0,
                            ),
                            emailWidget(),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: InkWell(
                                onTap: () {

                                },

                                child: Text(
                                  AppLocalizations.instance
                                      .text("loc_forgot_password"),
                                  textAlign: TextAlign.right,
                                  style: CustomWidget(context: context)
                                      .CustomSizedTextStyle(
                                      16.0,
                                      AppColors.blackColor,
                                      FontWeight.w600,
                                      'FontRegular'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ButtonCustom(
                                text:
                                AppLocalizations.instance.text("loc_login"),
                                iconEnable: false,
                                radius: 5.0,
                                icon: "",
                                textStyle: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    18.0,
                                    AppColors.whiteColor,
                                    FontWeight.w500,
                                    'FontRegular'),
                                iconColor: AppColors.appColor,
                                buttonColor: AppColors.appColor,
                                splashColor: AppColors.appColor,
                                onPressed: () {
                                  setState(() {
                                    FocusScope.of(context).unfocus();

                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Home_Screen()));
                                    // if (emailController.text.isEmpty) {
                                    //   CustomWidget(context: context).custombar(
                                    //       "Login", "Please Enter Email", false);
                                    // } else if (passwordController
                                    //     .text.isEmpty) {
                                    //   CustomWidget(context: context).custombar("Login",
                                    //       "Please Enter Password", false);
                                    // } else {
                                    //   setState(() {
                                    //     loading=true;
                                    //
                                    //     // verifyMail();
                                    //   });
                                    // }
                                  });
                                },
                                paddng: 1.0),
                            const SizedBox(
                              height: 50.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterScreen()));
                                });
                              },
                              child: RichText(
                                text: TextSpan(
                                  text: AppLocalizations.instance
                                      .text("loc_create_new"),
                                  style: CustomWidget(context: context)
                                      .CustomSizedTextStyle(
                                      16.0,
                                      AppColors.blackColor,
                                      FontWeight.w500,
                                      'FontRegular'),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: " " +
                                          AppLocalizations.instance
                                              .text("loc_free_reg"),
                                      style: CustomWidget(context: context)
                                          .CustomSizedTextStyle(
                                          16.0,
                                          AppColors.appColor,
                                          FontWeight.w500,
                                          'FontRegular'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 60.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              loading
                  ? CustomWidget(context: context).loadingIndicator(
                AppColors.appColor,
              )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }

  Widget emailWidget() {
    return Form(
      child: Column(
        children: [
          TextFormFieldCustom(
            onEditComplete: () {
              emailFocus.unfocus();
              FocusScope.of(context).requestFocus(passFocus);
            },
            radius: 5.0,
            error: "Enter Email",
            textColor: AppColors.blackColor,
            borderColor: AppColors.whiteColor,
            fillColor: AppColors.whiteColor,
            hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
            textStyle: CustomWidget(context: context).CustomTextStyle(
                AppColors.blackColor, FontWeight.w500, 'FontRegular'),
            textInputAction: TextInputAction.next,
            focusNode: emailFocus,
            maxlines: 1,
            text: '',
            hintText: AppLocalizations.instance.text("loc_enter_email"),
            obscureText: false,
            suffix: Container(
              width: 0.0,
            ),
            textChanged: (value) {},
            onChanged: () {},
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter email";
              } else if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value)) {
                return "Please enter valid email";
              }
              return null;
            },
            enabled: true,
            textInputType: TextInputType.emailAddress,
            controller: emailController,
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormFieldCustom(
            obscureText: !passVisible,
            textInputAction: TextInputAction.next,
            textColor: AppColors.blackColor,
            borderColor: AppColors.whiteColor,
            fillColor: AppColors.whiteColor,
            hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
            textStyle: CustomWidget(context: context).CustomTextStyle(
                AppColors.blackColor, FontWeight.w500, 'FontRegular'),
            radius: 5.0,
            focusNode: passFocus,
            suffix: IconButton(

              icon: Icon(
                passVisible ? Icons.visibility : Icons.visibility_off,
                color: AppColors.appColor,
              ),
              onPressed: () {
                setState(() {
                  passVisible = !passVisible;
                });
              },
            ),
            controller: passwordController,
            enabled: true,
            onChanged: () {},
            hintText: AppLocalizations.instance.text("loc_password"),
            textChanged: (value) {},
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter Password";
              }

              return null;
            },
            maxlines: 1,
            error: "Enter Valid Password",
            text: "",
            onEditComplete: () {
              passFocus.unfocus();
            },
            textInputType: TextInputType.visiblePassword,
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
      key: emailformKey,
    );
  }

  // verifyMail() {
  //   apiUtils
  //       .doLoginEmail(
  //     emailController.text.toString(),
  //     passwordController.text.toString(),
  //     userID,
  //     deviceData["device_model"].toString(),
  //     deviceData["deviceos_type"].toString(),
  //     deviceData["os_version"].toString(),
  //
  //
  //   )
  //       .then((LoginDetailsModel loginData) {
  //     setState(() {
  //
  //       if (loginData.status!) {
  //         loading=false;
  //
  //
  //         if(loginData.data!.f2AEnable!)
  //         {
  //
  //           Navigator.of(context)
  //               .push(MaterialPageRoute(builder: (context) => TFA_Verify_Screen(userid: loginData.data!.id!.toString(),)));
  //
  //         }
  //
  //         else
  //         {
  //           storeData(loginData.data!.accessToken!.toString(),loginData.data!.id.toString(),loginData.data!.email!.toString(),
  //               loginData.data!.refreshToken!.toString());
  //
  //           CustomWidget(context: context).custombar("Login", loginData.msg.toString(), true);
  //
  //           Navigator.of(context)
  //               .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
  //
  //         }
  //       }  else {
  //
  //         loading = false;
  //         CustomWidget(context: context)
  //             .custombar("Login", loginData.msg.toString(), false);
  //
  //       }
  //     });
  //
  //   }).catchError((Object error) {
  //
  //
  //     print(error);
  //     setState(() {
  //       loading = false;
  //     });
  //   });
  // }

  storeData(String token,String userId,String email, String refresh) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("token", token);
    preferences.setString("userId", userId);
    preferences.setString("email", email);
    preferences.setString("refresh", refresh);
  }
}
