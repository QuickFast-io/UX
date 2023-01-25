import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class PropertyDetailsPage extends StatefulWidget {
  const PropertyDetailsPage({Key? key}) : super(key: key);

  @override
  State<PropertyDetailsPage> createState() => _PropertyDetailsPageState();
}

class _PropertyDetailsPageState extends State<PropertyDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        title:  Text(
          AppLocalizations.instance.text("loc_property"),
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        actions: [
          Padding(
              padding:
              EdgeInsets.only(left: 5.0, bottom: 5.0, top: 5.0, right: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset("assets/menu/leafe.svg",
                  height: 30.0,),
              )),
        ],
      ),
      body: Stack(
        children: [
          propertyUI(),
        ],
      ),
    );
  }

  Widget propertyUI(){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/others/delete.png",width: 15.0,height: 15.0),
              SizedBox(width: 2.0,),
              Text(
                "Delete listing",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    Color(0xFFef9a9a),
                    FontWeight.w600,
                    'FontRegular'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10.0,),
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
          SizedBox(height: 25.0,),
          Text(
            "Property description",
            style: CustomWidget(context: context)
                .CustomSizedTextStyle(
                16.0,
                Colors.black,
                FontWeight.w600,
                'FontRegular'),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0,),
          Flexible(
            child: Text(
              "This beautiful apartment is located on the prestigious area of Florissant,in the near suburbs of Geneva,just a few minutes walk from downtown's shops,cafes,boutiques and restaurants",
              style: CustomWidget(context: context)
                  .CustomSizedTextStyle(
                  14.0,
                  Colors.black,
                  FontWeight.w400,
                  'FontRegular'),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 10.0,),
        ],
      ),
    );
  }
}
