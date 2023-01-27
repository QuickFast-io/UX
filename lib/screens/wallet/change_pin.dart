import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rabbit/common/animator.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/home/pass_phrase.dart';
import 'package:rabbit/screens/wallet/wallet_setup.dart';

class ChangePin extends StatefulWidget {
  const ChangePin({Key? key}) : super(key: key);

  @override
  State<ChangePin> createState() => _ChangePinState();
}

class _ChangePinState extends State<ChangePin> {
  String title = 'Set Pin';

  /*var helperObject = HttpRequestHandler();*/

  var pin1 = '';
  var pin2 = '';
  var pin3 = '';
  var pin4 = '';
  var pin5 = '';
  var pin6 = '';

  bool loading = false;
  var pinValues = '';
  var confirmValue = '';
  var oldPinValue = '';
  var createPin = '';
  var emails = '';
  var pins = '';

  Widget pinUI() {
    handleClick() {
      if (pinValues.length > 0 && pinValues.length == 6) {
        /*if (title == "Create Pin") {
          oldPinValue = pinValues;
          setState(() {
            title = "Create Pin";
            pin1 = '';
            pin2 = '';
            pin3 = '';
            pin4 = '';
            pin5 = '';
            pin6 = '';
            pinValues = '';
          });
        } else*/

          if (title == "Set Pin") {
          confirmValue = pinValues;
          setState(() {
            title = "Confirm Pin";
            pin1 = '';
            pin2 = '';
            pin3 = '';
            pin4 = '';
            pin5 = '';
            pin6 = '';
            pinValues = '';
          });
        } else if (title == "Confirm Pin") {
          if (confirmValue == pinValues) {
            /*loading=true;
            SubmitPin();*/
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WalletSetup()));
          } else {
            CustomWidget(context: context)
                .custombar("Pin", "Pins do not match", false);
          }
        }
      } else {
        CustomWidget(context: context).custombar("Pin", "Enter Pin!", false);
      }
    }

    getPinValue(value) {
      setState(() {
        if (pin1.isEmpty)
          pin1 = value;
        else if (pin2.isEmpty)
          pin2 = value;
        else if (pin3.isEmpty)
          pin3 = value;
        else if (pin4.isEmpty)
          pin4 = value;
        else if (pin5.isEmpty)
          pin5 = value;
        else if (pin6.isEmpty)
          pin6 = value;
        pinValues = '$pin1$pin2$pin3$pin4$pin5$pin6';
        if (pinValues.length == 6) {
          //doLoginPin(pinValues);
          handleClick();
        } else {}
      });
    }

    removePinValue() {
      print(pin6);
      setState(() {
        if (pin6.isNotEmpty)
          pin6 = '';
        else if (pin5.isNotEmpty)
          pin5 = '';
        else if (pin4.isNotEmpty)
          pin4 = '';
        else if (pin3.isNotEmpty)
          pin3 = '';
        else if (pin2.isNotEmpty)
          pin2 = '';
        else if (pin1.isNotEmpty) pin1 = '';
        pinValues = '$pin1$pin2$pin3$pin4$pin5$pin6';
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/others/logo.png",
                          width: 45.0,
                          height: 45.0,
                          color: AppColors.blackColor,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          AppLocalizations.instance.text("loc_app_name"),
                          style: CustomWidget(context: context).CustomSizedTextStyle(
                              24.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 65.0,bottom: 5.0,left: 5.0,right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.lock_outlined,
                        ),
                        Text(
                          title,
                          style: GoogleFonts.urbanist(
                            color: Color(0xFF333333),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 70.0,
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          height: 30.0,
                          width: 30.0,
                          margin: EdgeInsets.all(5),
                          color: Colors.transparent,
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: pin1.isEmpty
                                    ? Colors.white
                                    : AppColors.appColor,
                                border: Border.all(color: Color(0xFF999999)),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0),
                                  bottomLeft: const Radius.circular(40.0),
                                  bottomRight: const Radius.circular(40.0),
                                )),
                          ),
                        ),
                        new Container(
                          height: 30.0,
                          width: 30.0,
                          margin: EdgeInsets.all(5),
                          color: Colors.transparent,
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: pin2.isEmpty
                                    ? Colors.white
                                    : AppColors.appColor,
                                border: Border.all(color: Color(0xFF999999)),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0),
                                  bottomLeft: const Radius.circular(40.0),
                                  bottomRight: const Radius.circular(40.0),
                                )),
                          ),
                        ),
                        new Container(
                          height: 30.0,
                          width: 30.0,
                          margin: EdgeInsets.all(5),
                          color: Colors.transparent,
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: pin3.isEmpty
                                    ? Colors.white
                                    : AppColors.appColor,
                                border: Border.all(color: Color(0xFF999999)),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0),
                                  bottomLeft: const Radius.circular(40.0),
                                  bottomRight: const Radius.circular(40.0),
                                )),
                          ),
                        ),
                        new Container(
                          height: 30.0,
                          width: 30.0,
                          margin: EdgeInsets.all(5),
                          color: Colors.transparent,
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: pin4.isEmpty
                                    ? Colors.white
                                    : AppColors.appColor,
                                border: Border.all(color: Color(0xFF999999)),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0),
                                  bottomLeft: const Radius.circular(40.0),
                                  bottomRight: const Radius.circular(40.0),
                                )),
                          ),
                        ),
                        new Container(
                          height: 30.0,
                          width: 30.0,
                          margin: EdgeInsets.all(5),
                          color: Colors.transparent,
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: pin5.isEmpty
                                    ? Colors.white
                                    : AppColors.appColor,
                                border: Border.all(color: Color(0xFF999999)),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0),
                                  bottomLeft: const Radius.circular(40.0),
                                  bottomRight: const Radius.circular(40.0),
                                )),
                          ),
                        ),
                        new Container(
                          height: 30.0,
                          width: 30.0,
                          margin: EdgeInsets.all(5),
                          color: Colors.transparent,
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: pin6.isEmpty
                                    ? Colors.white
                                    : AppColors.appColor,
                                border: Border.all(color: Color(0xFF999999)),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0),
                                  bottomLeft: const Radius.circular(40.0),
                                  bottomRight: const Radius.circular(40.0),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomAnimator(
              customTransform: CustomTransform.scale,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  elevation:
                                      MaterialStateProperty.resolveWith<double>(
                                    (Set<MaterialState> states) {
                                      if (states.contains(
                                          MaterialState.pressed)) return 0.0;
                                      return 0.0;
                                    },
                                  ),
                                ),
                                onPressed: () {
                                  if (pinValues.length < 6) {
                                    getPinValue('1');
                                  }
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '1',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          flex: 1,
                        ),
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  elevation:
                                  MaterialStateProperty.resolveWith<double>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(
                                          MaterialState.pressed)) return 0.0;
                                      return 0.0;
                                    },
                                  ),
                                ),
                                onPressed: () {
                                  if (pinValues.length < 6) {
                                    getPinValue('2');
                                  }
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          flex: 1,
                        ),
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  elevation:
                                  MaterialStateProperty.resolveWith<double>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(
                                          MaterialState.pressed)) return 0.0;
                                      return 0.0;
                                    },
                                  ),
                                ),
                                onPressed: () {
                                  if (pinValues.length < 6) {
                                    getPinValue('3');
                                  }
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '3',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          flex: 1,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  elevation:
                                  MaterialStateProperty.resolveWith<double>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(
                                          MaterialState.pressed)) return 0.0;
                                      return 0.0;
                                    },
                                  ),
                                ),
                                onPressed: () {
                                  if (pinValues.length < 6) {
                                    getPinValue('4');
                                  }
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '4',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          flex: 1,
                        ),
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  elevation:
                                  MaterialStateProperty.resolveWith<double>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(
                                          MaterialState.pressed)) return 0.0;
                                      return 0.0;
                                    },
                                  ),
                                ),
                                onPressed: () {
                                  if (pinValues.length < 6) {
                                    getPinValue('5');
                                  }
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '5',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          flex: 1,
                        ),
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  elevation:
                                  MaterialStateProperty.resolveWith<double>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(
                                          MaterialState.pressed)) return 0.0;
                                      return 0.0;
                                    },
                                  ),
                                ),
                                onPressed: () {
                                  if (pinValues.length < 6) {
                                    getPinValue('6');
                                  }
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '6',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          flex: 1,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  elevation:
                                  MaterialStateProperty.resolveWith<double>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(
                                          MaterialState.pressed)) return 0.0;
                                      return 0.0;
                                    },
                                  ),
                                ),
                                onPressed: () {
                                  if (pinValues.length < 6) {
                                    getPinValue('7');
                                  }
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '7',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          flex: 1,
                        ),
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  elevation:
                                  MaterialStateProperty.resolveWith<double>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(
                                          MaterialState.pressed)) return 0.0;
                                      return 0.0;
                                    },
                                  ),
                                ),
                                onPressed: () {
                                  if (pinValues.length < 6) {
                                    getPinValue('8');
                                  }
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '8',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          flex: 1,
                        ),
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  elevation:
                                  MaterialStateProperty.resolveWith<double>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(
                                          MaterialState.pressed)) return 0.0;
                                      return 0.0;
                                    },
                                  ),
                                ),
                                onPressed: () {
                                  if (pinValues.length < 6) {
                                    getPinValue('9');
                                  }
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '9',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          flex: 1,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFF8D1F28),
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: Container(),
                          ),
                          flex: 1,
                        ),
                        Flexible(
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  elevation:
                                  MaterialStateProperty.resolveWith<double>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(
                                          MaterialState.pressed)) return 0.0;
                                      return 0.0;
                                    },
                                  ),
                                ),
                                onPressed: () {
                                  if (pinValues.length < 6) {
                                    getPinValue('0');
                                  }
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '0',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          flex: 1,
                        ),
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.all(8.0),
                            width: MediaQuery.of(context).size.width,
                            child: IconButton(
                              onPressed: () {
                                if (pinValues.length > 0) {
                                  removePinValue();
                                }
                              },
                              icon: Icon(
                                Icons.backspace,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          flex: 1,
                        ),
                        /*Flexible(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFF8D1F28),
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: IconButton(
                              onPressed: () {

                                handleClick();
                              },
                              icon: Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          flex: 1,
                        ),*/
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
              time: waitTime(microseconds: 6000),
              curve: Curves.decelerate),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        /*  appBar: PreferredSize(
          preferredSize: Size(double.infinity, 80),
          child: Container(
            color: Color(0xFF8D1F28),
            width: MediaQuery.of(context).size.width,
            height: 100,
            // color: AppColors.tab_color,
            child: Container(
                margin: EdgeInsets.fromLTRB(5, 40, 10, 0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  // Image.asset('assets/menu_left.png',
                                  //     height: 25.0, color: Colors.white),
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  }),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Change Pin".toUpperCase(),
                                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                )),
          ),
        ),*/
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: pinUI(),
                    )),
                loading
                    ? CustomWidget(context: context).loadingIndicator(
                        Color(0xFF8D1F28),
                      )
                    : Container()
              ],
            )),
      ),
    );
  }

/*SubmitPin() {
    helperObject.changePin(oldPinValue.toString(), confirmValue.toString()).then((CommonModel loginData) {
      if (loginData.statusCode.toString() == "200") {
        title = "Old Pin";
        confirmValue = '';
        pin1 = '';
        pin2 = '';
        pin3 = '';
        pin4 = '';
        pinValues = '';
        oldPinValue = '';
        setState(() {
      loading=false;
          showTopSnackBar(
            context,
            CustomSnackBar.success(
              message: loginData.message.toString(),
            ),
          );
          Navigator.pop(context);
        });
      } else {
        setState(() {
      loading=false;
          title = "Old Pin";
          confirmValue = '';
          oldPinValue = '';
          showTopSnackBar(
            context,
            CustomSnackBar.error(
              message: loginData.message.toString(),
            ),
          );
        });
      }
    }).catchError((Object error) {
  loading=false;
    });
  }*/
}
