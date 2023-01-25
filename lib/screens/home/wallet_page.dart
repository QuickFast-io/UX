import 'dart:convert';

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
  List<Tag> transList = [];

  String arrayObjsText =
      '{"tags": [{"name": "USD Coin", "value": 100.0,"quantity": 75.0,"quantity": 100.0,"image": "assets/icon/usd-circle.png","coin": "USD"},'
      ' {"name": "Ethereum","value": 12585.0, "quantity": 1105.0,"quantity": 100.85,"image": "assets/icon/ethereum.png","coin": "ETH"},'
      ' {"name": "Tether", "value": 1.0,"quantity": 1000.0,"quantity": 1200.85,"image": "assets/icon/tether.png","coin": "USDT"},'
      ' {"name": "Binance","value": 305.8, "quantity": 128556.0,"quantity": 182200.8571,"image": "assets/icon/binance.png","coin": "BNB"}]}';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var tagObjsJson = jsonDecode(arrayObjsText)['tags'] as List;
    transList = tagObjsJson.map((tagJson) => Tag.fromJson(tagJson)).toList();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,
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
                  activeText: 'Funds',
                  inactiveText: 'Property',
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
              color: AppColors.whiteColor,
            ),
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  switchVal ? transUI() : propertyUI(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget propertyUI() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BuyProperty()));
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
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/others/house.png"),
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
                                Icon(
                                  Icons.verified_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Verified",
                                  style: CustomWidget(context: context)
                                      .CustomSizedTextStyle(14.0, Colors.white,
                                          FontWeight.w600, 'FontRegular'),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: AppColors.appColor,
                              ),
                              padding: EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                  left: 15.0,
                                  right: 15.0),
                              child: Text(
                                "For Sale",
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(14.0, Colors.black,
                                        FontWeight.w400, 'FontRegular'),
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
                          Image.asset("assets/others/bed.png",
                              height: 24.0, width: 24.0),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "2 bedrooms",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(14.0, Color(0xFF696969),
                                    FontWeight.w600, 'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/others/Kitchen.png",
                              height: 24.0, width: 24.0),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "2 Kitchen",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(14.0, Color(0xFF696969),
                                    FontWeight.w600, 'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/others/Bathtub.png",
                              height: 24.0, width: 24.0),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "4000 Sq Ft",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(14.0, Color(0xFF696969),
                                    FontWeight.w600, 'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Exquisitely finished detached 6 \nBedroom mansion",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        24.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "123 Happy Street Alpharetta",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
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
                            .CustomSizedTextStyle(14.0, Color(0xFF696969),
                                FontWeight.w600, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "\$ 8,560,000",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(18.0, Colors.black,
                                FontWeight.w700, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            );
          }),
    );
  }

  Widget transUI() {
    return Container(
      child: transList.length > 0
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: transList.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            transList[index].image.toString(),
                            height: 35.0,
                          ),
                          const SizedBox(width: 10.0,),
                          Container(
                              child:  Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          transList[index].name.toString(),
                                          style: CustomWidget(context: context)
                                              .CustomSizedTextStyle(16.0, Colors.black,
                                              FontWeight.w500, 'FontRegular'),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(height: 5.0,),
                                        Text(
                                          "\$"+ transList[index].value.toString(),
                                          style: CustomWidget(context: context)
                                              .CustomSizedTextStyle(14.0, Colors.black.withOpacity(0.8),
                                              FontWeight.w500, 'FontRegular'),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "\$"+transList[index].quantity.toString()+" "+transList[index].coin.toString(),
                                          style: CustomWidget(context: context)
                                              .CustomSizedTextStyle(15.0, Colors.black,
                                              FontWeight.w500, 'FontRegular'),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(height: 5.0,),
                                        Text(
                                          "\$"+ transList[index].value.toString(),
                                          style: CustomWidget(context: context)
                                              .CustomSizedTextStyle(14.0, Colors.black.withOpacity(0.8),
                                              FontWeight.w500, 'FontRegular'),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                flex: 1,
                              )
                          )
                        ],
                      ),
                      const SizedBox(height: 20.0,),
                    ],
                  )
                );
              })
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                ),
                SvgPicture.asset(
                  "assets/menu/box.svg",
                  height: 100.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "You haven't listed anyproperties, \n but we can fix that.",
                  textAlign: TextAlign.center,
                  style: CustomWidget(context: context).CustomSizedTextStyle(
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

class walletList {
  String image;
  String name;

  walletList(this.image, this.name);
}

class Tag {
  String name;
  double value;
  double quantity;
  String image;
  String coin;

  Tag(this.name, this.value, this.quantity, this.image, this.coin);

  factory Tag.fromJson(dynamic json) {
    return Tag(
      json['name'] as String,
      json['value'] as double,
      json['quantity'] as double,
      json['image'] as String,
      json['coin'] as String,
    );
  }

  @override
  String toString() {
    return '{ ${this.name},${this.value}, ${this.quantity} ,${this.image},${this.coin}}';
  }
}
