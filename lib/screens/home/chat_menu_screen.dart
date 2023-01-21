import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';

class Chat_Menu_Screen extends StatefulWidget {
  const Chat_Menu_Screen({Key? key}) : super(key: key);

  @override
  State<Chat_Menu_Screen> createState() => _Chat_Menu_ScreenState();
}

class _Chat_Menu_ScreenState extends State<Chat_Menu_Screen> {

  ScrollController controller = ScrollController();
  List username = [
    "Rabbit Support","Jeeva","Mano","Lucky","Chandru","Sadham", "Subash Jeevanantham","Manoharan","Lekshmi Narayanan","Vinoth Kumar"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.3,
        leading: Container(
          height: 0.0,
        ),
        title: Text(
          "Chat",
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding:
              EdgeInsets.only(left: 5.0, bottom: 5.0, top: 5.0, right: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.search_rounded,
                  size: 25.0,
                  color: AppColors.blackColor,
                ),
              ))
        ],
      ),
      body: Container(
        color: AppColors.whiteColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        child:  ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          controller: controller,
          itemBuilder: (BuildContext context, int index) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.18,
                                height: 70.0,
                                // padding : EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                                // padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/menu/profile_1.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  // color: Colors.orangeAccent,
                                  shape: BoxShape.circle,

                                ),
                                // child: Image.asset("assets/images/group.png",
                                //   height: 50.0,
                                // ),
                              ),
                              SizedBox(width: 15.0,),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *0.5,
                                    child: Row(
                                      children: [
                                        Flexible(child: Text(
                                          username[index].toString(),
                                          textAlign: TextAlign.start,
                                          style: CustomWidget(context: context)
                                              .CustomSizedTextStyle(
                                              18.0,
                                              AppColors.blackColor,
                                              FontWeight.w600,
                                              'FontRegular'),
                                          overflow: TextOverflow.ellipsis,
                                        ),),
                                        SizedBox(width: 8.0,),
                                        Image.asset("assets/menu/verify.png",
                                          height: 20.0,
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6.0,),
                                  Container(
                                    width: MediaQuery.of(context).size.width *0.5,
                                    child: Flexible(child: Text(
                                      "You are welcome to Rabbit, if you have any question, fill free to ask them here... ",
                                      textAlign: TextAlign.start,
                                      style: CustomWidget(context: context)
                                          .CustomSizedTextStyle(
                                          12.0,
                                          AppColors.hintColor,
                                          FontWeight.w600,
                                          'FontRegular'),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                        Flexible(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "9:35am".toUpperCase(),
                              textAlign: TextAlign.start,
                              style: CustomWidget(context: context)
                                  .CustomSizedTextStyle(
                                  11.0,
                                  AppColors.blackColor,
                                  FontWeight.w500,
                                  'FontRegular'),
                            ),
                            SizedBox(height: 15.0,),

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: AppColors.appColor,
                              ),
                              padding: EdgeInsets.fromLTRB(15.0, 10.0,15.0,10.0),
                              child: Text(
                                "5",
                                textAlign: TextAlign.start,
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    12.0,
                                    AppColors.blackColor,
                                    FontWeight.w700,
                                    'FontRegular'),
                              ),
                            ),

                          ],
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 25.0,),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
