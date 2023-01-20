import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_button.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/basic/login_screen.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // APIUtils apiUtils = APIUtils();
  bool loading = false;
  bool passVisible = false;
  bool con_passVisible = false;
  bool ref_id = false;
  var snackBar;

  FocusNode nameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passFocus = FocusNode();
  FocusNode confirm_passFocus = FocusNode();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController con_passwordController = TextEditingController();
  ScrollController controller = ScrollController();
  final emailformKey = GlobalKey<FormState>();

  custombar(String title, String message, bool status) {
    snackBar = SnackBar(
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

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          elevation: 0.0,
          leading: Padding(
              padding: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
              child: InkWell(
                onTap: () {

                   Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
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
                )
              )),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 5.0),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
          ),
          child: Stack(
            children: [
              Container(
                child: SingleChildScrollView(
                  controller: controller,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.instance.text("loc_reg_start"),
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              30.0,
                              AppColors.blackColor,
                              FontWeight.w900,
                              'FontRegular'),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          width: MediaQuery.of(context).size.width,
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
                              emailWidget(),
                              const SizedBox(
                                height: 25.0,
                              ),
                              ButtonCustom(
                                  text: AppLocalizations.instance
                                      .text("loc_register"),
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
                                      if (nameController.text.isEmpty) {
                                        CustomWidget(context: context)
                                            .custombar("Register", "Please Enter UserName", false);
                                      } else if( nameController.text.length< 4 ) {
                                        CustomWidget(context: context).custombar("Register", "Please Enter Minimum 4 Letters Name",
                                            false);
                                      } else if(emailController.text.isEmpty)                         {
                                        CustomWidget(context: context).custombar("Register", "Please Enter Email Details",
                                            false);
                                      } else if(!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(emailController.text))                         {
                                        CustomWidget(context: context).custombar("Register", "Please Enter Correct Email Details",
                                            false);
                                      } else if(passwordController.text.isEmpty) {
                                        CustomWidget(context: context).custombar("Register", "Please Enter Password ",
                                            false);
                                      } else if( passwordController.text.length< 8 ) {
                                        CustomWidget(context: context).custombar("Register", "Please Enter Valid Password ",
                                            false);
                                      } else if (con_passwordController
                                          .text.isEmpty) {
                                        CustomWidget(context: context)
                                            .custombar(
                                            "Register",
                                            "Please Enter Confirm Password",
                                            false);
                                      } else if (passwordController.text
                                          .toString() !=
                                          con_passwordController.text
                                              .toString()) {
                                        CustomWidget(context: context).custombar(
                                            "Register",
                                            "Password and Confirm Password are mismatched",
                                            false);
                                      } else {
                                        setState(() {
                                          loading = true;
                                          // RegisterEmail();
                                        });
                                      }
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
                                                LoginScreen()));
                                  });
                                },
                                child: RichText(
                                  text: TextSpan(
                                    text: AppLocalizations.instance
                                        .text("loc_all_account"),
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                        16.0,
                                        AppColors.blackColor,
                                        FontWeight.w500,
                                        'FontRegular'),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: " " +  AppLocalizations.instance.text("loc_login"),
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
                        const SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          width: MediaQuery.of(context).size.width,
                          child:  Text(
                            "Note :",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.visible,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Colors.red,
                                FontWeight.w600,
                                'FontRegular'),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          width: MediaQuery.of(context).size.width,
                          child:  Text(
                            "To make your password more secure: (Minimum 8 characters,Use numbers,Use uppercase,Use lowercase and Use special characters)",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.visible,
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                12.0,
                                Colors.black38,
                                FontWeight.w500,
                                'FontRegular'),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
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
              nameFocus.unfocus();
              FocusScope.of(context).requestFocus(emailFocus);
            },
            radius: 5.0,
            error: "Enter UserName",
            textColor: AppColors.blackColor,
            borderColor: AppColors.whiteColor,
            fillColor: AppColors.whiteColor,
            hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
            textStyle: CustomWidget(context: context).CustomTextStyle(
                AppColors.blackColor, FontWeight.w500, 'FontRegular'),
            textInputAction: TextInputAction.next,
            focusNode: nameFocus,
            maxlines: 1,
            text: '',
            hintText: AppLocalizations.instance.text("loc_name"),
            obscureText: false,
            textChanged: (value) {},
            onChanged: () {},
            suffix: Container(
              width: 0.0,
            ),
            validator: (value) {

            },
            enabled: true,
            textInputType: TextInputType.name,
            controller: nameController,
          ),
          const SizedBox(
            height: 20.0,
          ),

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
            hintText: AppLocalizations.instance.text("loc_email"),
            obscureText: false,
            textChanged: (value) {},
            onChanged: () {},
            suffix: Container(
              width: 0.0,
            ),
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
            controller: passwordController,
            enabled: true,
            onChanged: () {},
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
              FocusScope.of(context).requestFocus(confirm_passFocus);
            },
            textInputType: TextInputType.visiblePassword,
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormFieldCustom(
            obscureText: !con_passVisible,
            textInputAction: TextInputAction.next,
            textColor: AppColors.blackColor,
            borderColor: AppColors.whiteColor,
            fillColor: AppColors.whiteColor,
            hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
            textStyle: CustomWidget(context: context).CustomTextStyle(
                AppColors.blackColor, FontWeight.w500, 'FontRegular'),
            radius: 5.0,
            focusNode: confirm_passFocus,
            controller: con_passwordController,
            enabled: true,
            onChanged: () {},
            hintText: AppLocalizations.instance.text("loc_confirm_pass"),
            textChanged: (value) {},
            suffix: IconButton(
              icon: Icon(
                con_passVisible ? Icons.visibility : Icons.visibility_off,
                color: AppColors.appColor,
              ),
              onPressed: () {
                setState(() {
                  con_passVisible = !con_passVisible;
                });
              },
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter Confirm Password";
              }

              return null;
            },
            maxlines: 1,
            error: "Enter Valid Password",
            text: "",
            onEditComplete: () {
              confirm_passFocus.unfocus();
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



  // RegisterEmail() {
  //   apiUtils
  //       .doRegisterEmail(
  //       nameController.text.toString(),
  //       emailController.text.toString(),
  //       passwordController.text.toString(),
  //       referral_idController.text.toString(),
  //       true)
  //       .then((RegDataModel loginData) {
  //     if (loginData.status!) {
  //       setState(() {
  //         loading = false;
  //       });
  //       custombar("Register", loginData.msg.toString(), true);
  //
  //       String email=emailController.text.toString();
  //       Navigator.of(context).push(MaterialPageRoute(
  //           builder: (context) =>
  //               OtpVerify(email:   email,)));
  //
  //       nameController.clear();
  //       emailController.clear();
  //       passwordController.clear();
  //       con_passwordController.clear();
  //       referral_idController.clear();
  //
  //     } else {
  //       setState(() {
  //         loading = false;
  //         custombar("Register", loginData.msg.toString(), false);
  //       });
  //     }
  //   }).catchError((Object error) {
  //     setState(() {
  //       loading = false;
  //     });
  //   });
  // }



  storeData(String userid, String email) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("user_id", userid);
    preferences.setString("uemail", email);
  }
}