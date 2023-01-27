import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/home/transfer_page.dart';
import 'package:rabbit/screens/home/wallet_page.dart';

class SendScreen extends StatefulWidget {
  Tag? coinDetails;
  SendScreen({Key? key,required this.coinDetails}) : super(key: key);

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  FocusNode addressFocus = FocusNode();
  FocusNode networkFocus = FocusNode();
  FocusNode amountFocus = FocusNode();
  TextEditingController addressController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController networkController = TextEditingController();
  List _selectedNetwork = [
    "ETH","BEP","BTC"
  ];
  String selectedValue= "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedValue=_selectedNetwork.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        title: Text(
          AppLocalizations.instance.text("loc_send")+widget.coinDetails!.coin.toString(),
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15.0),
        child: Stack(
          children: [
           sendUI(),
          ],
        ),
      ),
    );
  }

  sendUI(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Send"+widget.coinDetails!.name.toString(),
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    18.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Send"+ widget.coinDetails!.coin.toString()+" to crypto address ",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    Color(0xFFbdbdbd),
                    FontWeight.w500,
                    'FontRegular'),
              ),
              SizedBox(
                height: 45.0,
              ),
              Text(
                "Address ",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormFieldCustom(
                onEditComplete: () {
                  addressFocus.unfocus();
                  FocusScope.of(context).requestFocus(addressFocus);
                },
                radius: 15.0,
                error: "Enter the address",
                textColor: AppColors.blackColor,
                borderColor: AppColors.hintColor.withOpacity(0.2),
                fillColor: AppColors.whiteColor,
                hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                    15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                textStyle: CustomWidget(context: context).CustomTextStyle(
                    AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                textInputAction: TextInputAction.next,
                focusNode: addressFocus,
                maxlines: 1,
                text: '',
                hintText: "Long press and paste,Address,ENS etc..",
                obscureText: false,
                suffix: Container(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.qr_code_2,color: Colors.black.withOpacity(0.7),),
                      Text("Paste".toUpperCase(),style: TextStyle(fontSize:15.0,fontWeight:FontWeight.w500,color:  Color(0xFFbdbdbd),fontFamily: 'FontRegular'),)
                    ],
                  ),
                ),
                textChanged: (value) {},
                onChanged: () {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter address";
                  }
                  return null;
                },
                enabled: true,
                textInputType: TextInputType.name,
                controller: addressController,
              ),

              SizedBox(
                height: 20.0,
              ),
              Text(
                "Network",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.hintColor.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: DropdownButton(
                  underline: Container(
                    height: 0.0,
                  ),
                  menuMaxHeight: MediaQuery.of(context).size.height * 0.7,
                  items: _selectedNetwork
                      .map((value) => DropdownMenuItem(
                    child: Text(
                      value.toString(),
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          14.0,
                          AppColors.blackColor,
                          FontWeight.w500,
                          'FontRegular'),
                    ),
                    value: value,
                  ))
                      .toList(),
                  onChanged: (value) async {
                    setState(() {
                      selectedValue=value.toString();

                    });
                  },
                  hint: Text(
                    "Select correct network",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        12.0,
                        Theme.of(context).errorColor,
                        FontWeight.w500,
                        'FontRegular'),
                  ),
                  isExpanded: true,
                  value: selectedValue,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    // color: AppColors.otherTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Amount ",
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    AppColors.blackColor,
                    FontWeight.w600,
                    'FontRegular'),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormFieldCustom(
                onEditComplete: () {
                  amountFocus.unfocus();
                  FocusScope.of(context).requestFocus(addressFocus);
                },
                radius: 15.0,
                error: "Enter the amount",
                textColor: AppColors.blackColor,
                borderColor: AppColors.hintColor.withOpacity(0.2),
                fillColor: AppColors.whiteColor,
                hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                    15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                textStyle: CustomWidget(context: context).CustomTextStyle(
                    AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                textInputAction: TextInputAction.next,
                focusNode: addressFocus,
                maxlines: 1,
                text: '',
                hintText: " ",
                obscureText: false,
                suffix: Container(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("max ".toUpperCase(),style: TextStyle(fontSize:15.0,fontWeight:FontWeight.w500,color:  Color(0xFFbdbdbd),fontFamily: 'FontRegular'),),
                      Text("ETH".toUpperCase(),style: TextStyle(fontSize:15.0,fontWeight:FontWeight.w500,color:  Color(0xFFbdbdbd),fontFamily: 'FontRegular'),)
                    ],
                  ),
                ),
                textChanged: (value) {},
                onChanged: () {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter address";
                  }
                  return null;
                },
                enabled: true,
                textInputType: TextInputType.name,
                controller: amountController,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: (){
            setState(() {

              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                          Transfer()));
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
                AppLocalizations.instance.text("loc_continue"),
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
