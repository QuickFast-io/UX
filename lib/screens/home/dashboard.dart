import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  List<String> buyList = [
    "assets/house/h1.png",
    "assets/house/h1.png",
    "assets/house/h3.png",
    "assets/house/h4.png",
    "assets/house/h4.png",
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/others/logo.png",
              width: 24.0,
              height: 24.0,
            ),
            Text(
              AppLocalizations.instance.text("loc_app_name"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: [
            dashUI(),
          ],
        ),
      ),
    );
  }

  Widget dashUI() {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  AppLocalizations.instance.text("loc_dash_title"),
                  style: CustomWidget(context: context).CustomSizedTextStyle(
                      26.0,
                      AppColors.blackColor,
                      FontWeight.w500,
                      'FontRegular'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/others/search.png",
                            height: 15.0,
                            width: 15.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            AppLocalizations.instance.text("loc_location") +
                                "?",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                    16.0,
                                    AppColors.blackColor,
                                    FontWeight.w400,
                                    'FontRegular'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.instance.text("loc_type"),
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(12.0, Color(0xFFb6b6b6),
                                    FontWeight.w400, 'FontRegular'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFb6b6b6),
                              shape: BoxShape.circle,
                            ),
                            height: 5.0,
                            width: 5.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            AppLocalizations.instance.text("loc_price"),
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(12.0, Color(0xFFb6b6b6),
                                    FontWeight.w400, 'FontRegular'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFb6b6b6),
                              shape: BoxShape.circle,
                            ),
                            height: 5.0,
                            width: 5.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            AppLocalizations.instance.text("loc_feature"),
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(12.0, Color(0xFFb6b6b6),
                                    FontWeight.w400, 'FontRegular'),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/others/filter.png",
                        height: 15.0,
                        width: 15.0,
                        color: Color(0xFF000000),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      TabBar(
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.black,
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                        labelColor: Colors.black,
                        isScrollable: false,
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
                          children: [buyUI(), sellUI()],
                          controller: _tabController,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 80.0,
            padding:
                EdgeInsets.only(left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
            decoration: BoxDecoration(
              color: Color(0xFFb6b6b6),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/others/location.png",
                    width: 20.0, height: 20.0),
                Text(
                  "Map",
                  style: CustomWidget(context: context).CustomSizedTextStyle(
                      14.0,
                      AppColors.blackColor,
                      FontWeight.w600,
                      'FontRegular'),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buyUI() {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(0),
        itemCount: buyList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 1.5,

        ),
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(7), // Image border
                child: Image.asset(buyList[index], fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Newyork",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        12.0, Colors.white, FontWeight.w400, 'FontRegular'),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget sellUI() {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(0),
        itemCount: buyList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 1.5,

        ),
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(7), // Image border
                child: Image.asset(buyList[index], fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Newyork",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        12.0, Colors.white, FontWeight.w400, 'FontRegular'),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
