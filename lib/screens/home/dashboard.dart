import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with SingleTickerProviderStateMixin{
  TabController? _tabController;
  List<String>buyList=[
    "assets/house/h1.png",
    "assets/house/h1.png",
    "assets/house/h3.png",
    "assets/house/h4.png",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            dashUI(),
          ],
        ),
      ),
    );
  }

  Widget dashUI(){
    return Container(
      /*height: MediaQuery.of(context).size.height,*/
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15.0,),
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset("assets/others/logo.png",width: 24.0,height: 24.0,),
                 Text(
                   AppLocalizations.instance.text("loc_app_name"),
                   style: CustomWidget(context: context).CustomSizedTextStyle(
                       20.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
                   textAlign: TextAlign.center,
                 ),
               ],
             ),
            SizedBox(height: 10.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1.0,
              color: AppColors.blackColor.withOpacity(0.5),
            ),
            SizedBox(height: 10.0,),
            Text(
              AppLocalizations.instance.text("loc_dash_title"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  32.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
            ),
            SizedBox(height: 15.0,),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(
                  color: Colors.black.withOpacity(0.5),
                ),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/others/search.png",height: 24.0,width: 24.0,),
                      Text(
                        AppLocalizations.instance.text("loc_location")+"?",
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            16.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        AppLocalizations.instance.text("loc_type"),
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            12.0, Color(0xFFb6b6b6), FontWeight.w400, 'FontRegular'),
                      ),
                      SizedBox(width: 5.0,),
                      Container(
                        decoration: BoxDecoration(
                          color:Color(0xFFb6b6b6),
                          shape: BoxShape.circle,
                        ),
                        height: 5.0,
                        width: 5.0,
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        AppLocalizations.instance.text("loc_price"),
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            12.0, Color(0xFFb6b6b6), FontWeight.w400, 'FontRegular'),
                      ),
                      SizedBox(width: 5.0,),
                      Container(
                        decoration: BoxDecoration(
                          color:Color(0xFFb6b6b6),
                          shape: BoxShape.circle,
                        ),
                        height: 5.0,
                        width: 5.0,
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        AppLocalizations.instance.text("loc_feature"),
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            12.0, Color(0xFFb6b6b6), FontWeight.w400, 'FontRegular'),
                      ),
                    ],
                  ),
                  Image.asset("assets/others/filter.png",height: 24.0,width: 24.0,color:Color(0xFFb6b6b6),),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.6,
              child: Column(
                children: [
                  TabBar(
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.black,
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Buy',
                      ),
                      Tab(
                        text: 'Sell',
                      )
                    ],
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        buyUI(),
                        sellUI()
                      ],
                      controller: _tabController,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buyUI(){
    return Container(
      padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        itemCount: buyList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 0.0
        ),
        itemBuilder: (BuildContext context, int index){
          return Stack(
            children: [
              Container(
                  child: Image.asset(buyList[index],)),
              Align(
                 alignment: Alignment.center,
                child: Text(
                 "Newyork",
                  style: CustomWidget(context: context).CustomSizedTextStyle(
                      12.0, Colors.white, FontWeight.w400, 'FontRegular'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget sellUI(){
    return Container(
      padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        itemCount: buyList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 0.0
        ),
        itemBuilder: (BuildContext context, int index){
          return Stack(
            children: [
              Container(
                  child: Image.asset(buyList[index],)),
              Align(
                 alignment: Alignment.center,
                child: Text(
                 "Newyork",
                  style: CustomWidget(context: context).CustomSizedTextStyle(
                      12.0, Colors.white, FontWeight.w400, 'FontRegular'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }


}
