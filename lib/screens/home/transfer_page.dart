import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/home/send_page.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  bool transfer=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        title: Text(
          AppLocalizations.instance.text("loc_transfer"),
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
          textAlign: TextAlign.center,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.history,color: Colors.black,size: 24.0,),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        child: Stack(
          children: [
           transferUI(),
          ],
        ),
      ),
    );
  }

  Widget transferUI(){
    return transfer?Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "200 ETH",
            style: CustomWidget(context: context).CustomSizedTextStyle(
                34.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.0,),
          Text(
            "="+"\$234,568.45",
            style: CustomWidget(context: context).CustomSizedTextStyle(
                18.0, Color(0xFFacacac), FontWeight.w600, 'FontRegular'),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0,),
          Text(
            "Sent to",
            style: CustomWidget(context: context).CustomSizedTextStyle(
                16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.0,),
          Text(
            "0x9ba84A2275c45...ca6588235189FDE716",
            style: CustomWidget(context: context).CustomSizedTextStyle(
                14.0, Color(0xFFacacac), FontWeight.w600, 'FontRegular'),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ):Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "200 ETH",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        34.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "="+"\$234,568.45",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        18.0, Color(0xFFacacac), FontWeight.w600, 'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.0,),
                    Text(
                      "Asset",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      "From",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      "To",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 15.0,),
                    Text(
                      "Etherum(ETH) -BEP20",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          14.0, Color(0xFFacacac) , FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      "Rabbit Wallet(0x9ba8...f658)",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          14.0, Color(0xFFacacac) , FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      "0x9ba84A2275c45...ca6588235189FDE716",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          14.0, Color(0xFFacacac), FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 0.5,
              color:Color(0xFFacacac) ,
            ),
            SizedBox(height: 15.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Network fee",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      "Total",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 15.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "0.4566 ETH(\$5.35)",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          14.0, Color(0xFFacacac) , FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      "195 ETH(\$234,568.45)",
                      style: CustomWidget(context: context).CustomSizedTextStyle(
                          14.0, Color(0xFFacacac) , FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),

        InkWell(
          onTap: (){
            setState(() {

              /*Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                          SendScreen()));*/
              transfer=true;
            });
          },
          child: Container(
            padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
            decoration: BoxDecoration(
              color: AppColors.appColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                AppLocalizations.instance.text("loc_send"),
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
    );
  }

}
