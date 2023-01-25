import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_switch.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class DashboardDetail extends StatefulWidget {
  final String path;
  const DashboardDetail({Key? key,
  required this.path
  }) : super(key: key);

  @override
  State<DashboardDetail> createState() => _DashboardDetailState();
}

class _DashboardDetailState extends State<DashboardDetail> {
  bool switchButton=true;

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
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
               "Atlanta GA",
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
              textAlign: TextAlign.center,
            ),
            Icon(
              Icons.expand_more_outlined,
              color: Colors.black,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        actions: [
          Padding(
              padding:
              EdgeInsets.only(left: 5.0, bottom: 5.0, top: 5.0, right: 10.0),
              child: IconButton(
                onPressed: () {

                },
               icon:Icon(
                 Icons.search_outlined,
                 color: Colors.black,
               ),
              )),
        ],
      ),
      body: Stack(
        children: [
            detailUI(),
        ],
      ),
    );
  }

  Widget detailUI(){
   return Container(
     width:MediaQuery.of(context).size.width,
     height:MediaQuery.of(context).size.height,
     color: Colors.white,
     padding: EdgeInsets.only(left: 10.0,right: 10.0),
     child: Column(
       children: [
         Expanded(
             flex: 1,
             child:Container(
               width: MediaQuery.of(context).size.width,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   CustomSwitch(
                       value: switchButton,
                       activeColor: Color(0xFFf8f8f8),
                       activeTextColor: Colors.black,
                       icon:Image.asset("assets/others/list.png",height: 24.0,width: 24.0) ,
                       activeText: "For sale",
                       inactiveColor: AppColors.blackColor,
                       inactiveTextColor: Colors.black,
                       inactiveText: "Map",
                       inActiveIcon: Image.asset("assets/others/location.png",height: 24.0,width: 24.0) ,
                       onChanged: (test) {
                         setState(() {
                           switchButton = test;
                         });
                       }),
                 ],
               ),
             )
         ),

         Expanded(
           flex: 7,
           child: switchButton?Container(
             width:MediaQuery.of(context).size.width,
             height:MediaQuery.of(context).size.height,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Align(
                       child: Text(
                         "Sort by Highest Price",
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             14.0,
                             Colors.black,
                             FontWeight.w400,
                             'FontRegular'),
                         textAlign: TextAlign.start,
                       ),
                       alignment: Alignment.topLeft,
                     ),
                     SizedBox(height: 10.0,),
                     Stack(
                       children: [
                         Container(
                           width: MediaQuery.of(context).size.width,
                           height: 250.0,
                           decoration:BoxDecoration(
                             image:DecorationImage(image: AssetImage(widget.path),
                                 fit: BoxFit.fill),
                             borderRadius: BorderRadius.circular(15.0),
                           ),
                           padding: EdgeInsets.all(5.0),
                         ),
                         Align(
                           alignment: Alignment.topRight,
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(5.0),
                               color: AppColors.appColor,
                             ),
                             padding: EdgeInsets.only(top: 8.0,bottom: 8.0,left: 15.0,right: 15.0),
                             margin: EdgeInsets.only(top: 8.0,bottom: 8.0,left: 15.0,right: 15.0),
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
                         ),
                       ],
                     ),
                     SizedBox(height: 5.0),
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
                   ],
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
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
                   ],
                 ),
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
         )
       ],
     ),
   );
  }




}
