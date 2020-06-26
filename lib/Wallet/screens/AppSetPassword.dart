import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saws/Wallet/screens/AppDashboard.dart';
import 'package:saws/main/utils/AppConstant.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/screens/AppVerification.dart';

class AppSetPassword extends StatefulWidget {
  static String tag = '/AppSetPassword';

  @override
  AppSetPasswordState createState() => AppSetPasswordState();
}

class AppSetPasswordState extends State<AppSetPassword> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Container(
            height: height,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(App_ragistration,
                    width: width / 2.5, height: width / 2.5),
                SizedBox(height: 30),

                text(App_lbl_set_pawd,
                    textColor: AppTextColorPrimary,
                    fontFamily: fontBold,
                    fontSize: 22.0),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.all(24),
                  decoration: boxDecoration(
                      bgColor: AppWhite, showShadow: true, radius: 4),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(height: 10),
                      EditText(hint: App_hint_password, isSecure: true),
                      SizedBox(
                        height: 16,
                      ),
                      EditText(hint: App_hint_confirm_password, isSecure: true),
                      SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AppDashboard(),)
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 50,right: 50,),
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
        ),
        TopBar()
      ],
    ));
  }
}
