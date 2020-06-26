import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saws/Wallet/screens/AppVerification.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/AppConstant.dart';
import 'package:saws/Wallet/utils/codePicker/country_code_picker.dart';

class AppSignUp extends StatefulWidget {
  static String tag = '/AppSignUp';

  @override
  AppSignUpState createState() => AppSignUpState();
}

class AppSignUpState extends State<AppSignUp> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(AppWhite);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(App_ragistration,
                  width: width / 2.5, height: width / 2.5),
              text(App_heading_login,
                  textColor: AppTextColorPrimary,
                  fontFamily: fontBold,
                  fontSize: 22.0),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 16),
                child: text(App_note_registration,
                    textColor: AppTextColorSecondary,
                    fontFamily: fontMedium,
                    fontSize: textSizeMedium,
                    maxLine: 2,
                    isCentered: true),
              ),
              Container(
                margin: EdgeInsets.all(24),
                decoration: boxDecoration(bgColor: AppWhite, showShadow: true, radius: 4),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.only(left:16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: AppViewColor,width: 0.5)
                      ),
                      child: Row(
                        children: <Widget>[
                          CountryCodePicker(
                            onChanged: print,
                            showFlag: true,
                          ),
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              style: TextStyle(
                                  fontSize: textSizeLargeMedium,
                                  fontFamily: fontRegular),
                              decoration: InputDecoration(
                                  counterText: "",
                                  contentPadding:
                                      EdgeInsets.fromLTRB(16, 10, 16, 10),
                                  hintText: App_hint_phone_no,
                                  hintStyle: TextStyle(color: AppTextColorThird),
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        launchScreen(context, AppVerification.tag);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: width / 8,
                        child: text(App_continue,
                            textColor: AppWhite, isCentered: true),
                        decoration:
                            boxDecoration(bgColor: AppColorPrimary, radius: 8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
