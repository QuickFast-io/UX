import 'package:rabbit/common/colors.dart';
import 'package:rabbit/screens/basic/splash_screen.dart';
import 'package:flutter/material.dart';

class SplashHome extends StatefulWidget {
  const SplashHome({Key? key}) : super(key: key);

  @override
  State<SplashHome> createState() => _SplashHomeState();
}

class _SplashHomeState extends State<SplashHome> {


  @override
  void initState() {
    super.initState();
  onLoad();
  }



  onLoad() {

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => SplashScreen()));
    });
    // if (loggedIn) {
    //   if (gooleAuth) {
    //     Future.delayed(const Duration(seconds: 5), () {
    //       Navigator.of(context).pushReplacement(
    //           MaterialPageRoute(builder: (context) => GoogleLogin()));
    //     });
    //   } else {
    //     Future.delayed(const Duration(seconds: 5), () {
    //       Navigator.of(context)
    //           .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    //     });
    //   }
    // } else {
    //   Future.delayed(const Duration(seconds: 5), () {
    //     Navigator.of(context).pushReplacement(
    //         MaterialPageRoute(builder: (context) => LoginScreen()));
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color:  AppColors.appColor,
        child: Center(
          child:Image.asset('assets/others/logo.png', height: 150.0,),
        ),
      ),
    );
  }
}
