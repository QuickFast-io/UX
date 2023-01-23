import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_switch.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/home/buy_property.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  bool switchVal = true;
  List<dynamic> transList=[];
  List<dynamic> propertyList=[];
 final data = const [
    {
      "sqrFit": "A",
      "bedrooms": "2",
      "kitchen": "2",
      "title": "Exquisitely finished detached 6 Bedroom mansion",
      "location": "123 Happy street alpharetta",
      "cost": "85,60,000",
      "propertyImage":"assets/others/home.png"
    },
    {
      "sqrFit": "A",
      "bedrooms": "2",
      "kitchen": "2",
      "title": "Exquisitely finished detached 6 Bedroom mansion",
      "location": "123 Happy street alpharetta",
      "cost": "85,60,000",
      "propertyImage":"assets/others/home.png"
    },
    {
      "sqrFit": "A",
      "bedrooms": "2",
      "kitchen": "2",
      "title": "Exquisitely finished detached 6 Bedroom mansion",
      "location": "123 Happy street alpharetta",
      "cost": "85,60,000",
      "propertyImage":"assets/others/home.png"
    },
    {
      "sqrFit": "A",
      "bedrooms": "2",
      "kitchen": "2",
      "title": "Exquisitely finished detached 6 Bedroom mansion",
      "location": "123 Happy street alpharetta",
      "cost": "85,60,000",
      "propertyImage":"assets/others/home.png"
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
          AppLocalizations.instance.text("loc_wallet"),
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
            walletUI(),
          ],
        ),
      ),
    );
  }

  walletUI() {
    return Column(
      children: [
        SizedBox(
          height: 24.0,
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppLocalizations.instance.text("your balance").toUpperCase(),
                style: CustomWidget(context: context).CustomSizedTextStyle(
                    14.0,
                    AppColors.blackColor.withOpacity(0.5),
                    FontWeight.w600,
                    'FontRegular'),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "\$ 40,990,245",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        34.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      ".67",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(16.0, AppColors.blackColor,
                              FontWeight.w600, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              CustomSwitch(
                  value: switchVal,
                  activeColor: Colors.black,
                  activeTextColor: Colors.black,
                  inactiveColor: Colors.white,
                  inactiveTextColor: Colors.black,
                  activeText:'Funds',
                  inactiveText:'Property',
                  onChanged: (test) {
                    setState(() {
                      switchVal = test;
                    });
                  }),
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
                children: [
                  switchVal?transUI():propertyUI(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget propertyUI(){
    return Container(
      padding: EdgeInsets.all(5.0),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context,index){
            return InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BuyProperty()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        decoration:BoxDecoration(
                          image:DecorationImage(image: AssetImage("assets/others/house.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(5.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.verified_outlined,color: Colors.white,),
                                SizedBox(width: 5.0,),
                                Text(
                                  "Verified",
                                  style: CustomWidget(context: context)
                                      .CustomSizedTextStyle(
                                      14.0,
                                      Colors.white,
                                      FontWeight.w600,
                                      'FontRegular'),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: AppColors.appColor,
                              ),
                              padding: EdgeInsets.only(top: 8.0,bottom: 8.0,left: 15.0,right: 15.0),
                              child: Text(
                                "For Sale",
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    14.0,
                                    Colors.black,
                                    FontWeight.w400,
                                    'FontRegular'),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/others/bed.png",height: 24.0,width: 24.0),
                          SizedBox(width: 5.0,),
                          Text(
                            "2 bedrooms",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFF696969),
                                FontWeight.w600,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/others/Kitchen.png",height: 24.0,width: 24.0),
                          SizedBox(width: 5.0,),
                          Text(
                            "2 Kitchen",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFF696969),
                                FontWeight.w600,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/others/Bathtub.png",height: 24.0,width: 24.0),
                          SizedBox(width: 5.0,),
                          Text(
                            "4000 Sq Ft",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                Color(0xFF696969),
                                FontWeight.w600,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Exquisitely finished detached 6 \nBedroom mansion",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        24.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "123 Happy Street Alpharetta",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor,
                        FontWeight.w400,
                        'FontRegular'),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "cost : ",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            14.0,
                            Color(0xFF696969),
                            FontWeight.w600,
                            'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "\$ 8,560,000",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            18.0,
                            Colors.black,
                            FontWeight.w700,
                            'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                ],
              ),
            );
          }
      ),
    );
  }

  Widget transUI(){
    return Container(
      child: transList.length>0?ListView.builder(
          shrinkWrap: true,
          itemCount: transList.length,
          itemBuilder: (BuildContext context,index){
            return Container();
          }
      ):Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
          ),
          SvgPicture.asset("assets/menu/box.svg",
            height: 100.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "You haven't listed anyproperties, \n but we can fix that.",
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
    );
  }

}
