import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/individual/individual_screen_4.dart';

class Individual_Screen3 extends StatefulWidget {
  const Individual_Screen3({Key? key}) : super(key: key);

  @override
  State<Individual_Screen3> createState() => _Individual_Screen3State();
}

class _Individual_Screen3State extends State<Individual_Screen3> {

  FocusNode dobFocus = FocusNode();
  TextEditingController dobController = TextEditingController();
  FocusNode ssnumFocus = FocusNode();
  FocusNode idnumFocus = FocusNode();
  TextEditingController ssnumController = TextEditingController();
  TextEditingController idnumController = TextEditingController();

  DateTime? selectedDobDate;
  DateTime? selectedDate;

  List _selectedID = [
    "Passport","Driving License", "Pan Card",
  ];
  String seectedIDValue= "";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    seectedIDValue = _selectedID.first;
  }


  Future<Null> _selectDate(BuildContext context, bool isDob,
      DateTime initialDate, DateTime firstDate, DateTime lastDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: AppColors.blackColor,
            accentColor: AppColors.whiteColor,
            colorScheme: ColorScheme.light(
              primary: AppColors.appColor,
            ),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (picked != null)
      setState(() {
        if (isDob) {
          selectedDobDate = picked;
          dobController =
              TextEditingController(text: picked.toString().split(' ')[0]);
        } else {
          selectedDate = picked;
        }
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            color: AppColors.appColor,
            width: 2.0,
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: Padding(
            padding:
            EdgeInsets.only(left: 9.0, bottom: 5.0, top: 5.0, right: 2.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: AppColors.blackColor,

              ),
            )),
        title: Text(
          "Individual",
          style: CustomWidget(context: context).CustomSizedTextStyle(
              16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(1.0, 0.0, 15.0, 0.0),
              child:  Center(
                child: Text(
                  "Cancel",
                  style: CustomWidget(context: context).CustomSizedTextStyle(
                      15.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
          color: AppColors.whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.0,),

                    Text(
                      "Provide your Identity Information",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          24.0,
                          AppColors.blackColor,
                          FontWeight.w600,
                          'FontRegular'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Please enter your identity information, including your social security number, date of birth, and any other relevant identification details.",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          13.0,
                          AppColors.hintColor,
                          FontWeight.w500,
                          'FontRegular'),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Form(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Date of Birth",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              14.0,
                              AppColors.blackColor,
                              FontWeight.w500,
                              'FontRegular'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        InkWell(
                          onTap: (){
                            selectedDobDate = DateTime(
                                (DateTime.now()).year,
                                (DateTime.now()).month,
                                (DateTime.now()).day);
                            _selectDate(
                                context,
                                true,
                                DateTime(
                                    selectedDobDate!.year,
                                    selectedDobDate!.month,
                                    selectedDobDate!.day),
                                DateTime(
                                    selectedDobDate!.year - 100,
                                    selectedDobDate!.month,
                                    selectedDobDate!.day),
                                DateTime(
                                    selectedDobDate!.year,
                                    selectedDobDate!.month,
                                    selectedDobDate!.day));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10.0, 13.0, 10.0, 13.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: AppColors.hintColor.withOpacity(0.3)),
                                color: Colors.white
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  dobController.text.toString(),
                                  style: CustomWidget(context: context)
                                      .CustomSizedTextStyle(
                                      14.0,
                                      AppColors.blackColor,
                                      FontWeight.w500,
                                      'FontRegular'),
                                ),
                                Icon(
                                  Icons.date_range_outlined,
                                  size: 20.0,
                                  color: AppColors.blackColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),

                        Text(
                          "Social Scurity Number ",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              14.0,
                              AppColors.blackColor,
                              FontWeight.w500,
                              'FontRegular'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormFieldCustom(
                          onEditComplete: () {
                            ssnumFocus.unfocus();
                            FocusScope.of(context).requestFocus(idnumFocus);
                          },
                          radius: 20.0,
                          error: "Enter Sales Price",
                          textColor: AppColors.blackColor,
                          borderColor: AppColors.hintColor.withOpacity(0.2),
                          fillColor: AppColors.whiteColor,
                          hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                              15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                          textStyle: CustomWidget(context: context).CustomTextStyle(
                              AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                          textInputAction: TextInputAction.next,
                          focusNode: ssnumFocus,
                          maxlines: 1,
                          text: '',
                          hintText: " ",
                          obscureText: false,
                          suffix: Container(
                            width: 0.0,
                          ),
                          textChanged: (value) {},
                          onChanged: () {},
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter Sales Price";
                            }
                            return null;
                          },
                          enabled: true,
                          textInputType: TextInputType.number,
                          controller: ssnumController,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),

                        Text(
                          "Passport or Driver's License ",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              14.0,
                              AppColors.blackColor,
                              FontWeight.w500,
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
                            items: _selectedID
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
                                seectedIDValue=value.toString();

                              });
                            },
                            hint: Text(
                              "Select Category",
                              style: CustomWidget(context: context).CustomSizedTextStyle(
                                  12.0,
                                  Theme.of(context).errorColor,
                                  FontWeight.w500,
                                  'FontRegular'),
                            ),
                            isExpanded: true,
                            value: seectedIDValue,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              // color: AppColors.otherTextColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),

                        Text(
                          "ID Number ",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              14.0,
                              AppColors.blackColor,
                              FontWeight.w500,
                              'FontRegular'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormFieldCustom(
                          onEditComplete: () {
                            idnumFocus.unfocus();
                          },
                          radius: 20.0,
                          error: "Enter Sales Price",
                          textColor: AppColors.blackColor,
                          borderColor: AppColors.hintColor.withOpacity(0.2),
                          fillColor: AppColors.whiteColor,
                          hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                              15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                          textStyle: CustomWidget(context: context).CustomTextStyle(
                              AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                          textInputAction: TextInputAction.next,
                          focusNode: idnumFocus,
                          maxlines: 1,
                          text: '',
                          hintText: " ",
                          obscureText: false,
                          suffix: Container(
                            width: 0.0,
                          ),
                          textChanged: (value) {},
                          onChanged: () {},
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter Sales Price";
                            }
                            return null;
                          },
                          enabled: true,
                          textInputType: TextInputType.number,
                          controller: idnumController,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),

                      ],
                    )),
                  ],
                ),
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                Individual_Screen4()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
                  decoration: BoxDecoration(
                    color: AppColors.appColor,
                    // border: Border.all(
                    //     color: AppColors.blackColor
                    // ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          14.0,
                          AppColors.blackColor,
                          FontWeight.w700,
                          'FontRegular'),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10.0,
              ),
            ],

          ),
        ),
      ),
    );
  }
}
