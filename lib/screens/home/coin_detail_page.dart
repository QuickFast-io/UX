import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/home/wallet_page.dart';

class CoinDetailsPage extends StatefulWidget {
  Tag? coinDetails;
   CoinDetailsPage({Key? key,required this.coinDetails}) : super(key: key);

  @override
  State<CoinDetailsPage> createState() => _CoinDetailsPageState();
}

class _CoinDetailsPageState extends State<CoinDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: AppColors.appColor,
        elevation: 0.5,
        title: Text(
          widget.coinDetails!.name.toString(),
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            coinDetailUI(),
          ],
        ),
      ),
    );
  }

  Widget coinDetailUI(){
    return Column(
      children: [
        SizedBox(
          height: 24.0,
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(widget.coinDetails!.image.toString(),width: 80.0,height: 60.0,),
              SizedBox(
                height: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                   widget.coinDetails!.quantity.toString()+" "+ widget.coinDetails!.coin.toString(),
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        38.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      "\$ "+ widget.coinDetails!.value.toString(),
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(16.0, AppColors.blackColor,
                          FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color:Colors.black ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.only(right:25.0 ,left: 25.0,bottom: 5.0,top: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.north_east_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(width: 3.0,),
                        Text(
                          "Send".toUpperCase(),
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(14.0, AppColors.blackColor,
                              FontWeight.w400, 'FontRegular'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color:Colors.black ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.only(right:25.0 ,left: 25.0,bottom: 5.0,top: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.qr_code_2_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(width: 3.0,),
                        Text(
                          "Receive".toUpperCase(),
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(14.0, AppColors.blackColor,
                              FontWeight.w400, 'FontRegular'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),

            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          flex: 5,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35.0),
                  topLeft: Radius.circular(35.0)),
              color: AppColors.backgroundColor,
            ),
            child:SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 160.0,
                  ),
                  SvgPicture.asset("assets/menu/box.svg",
                    height: 100.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "No Transactions",
                    textAlign: TextAlign.center,
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
