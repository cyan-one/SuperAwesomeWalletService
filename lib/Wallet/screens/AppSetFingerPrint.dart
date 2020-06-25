import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saws/main/utils/AppConstant.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';

class AppSetFingerPrint extends StatefulWidget {
  static String tag = '/AppSetFingerPrint';

  @override
  AppSetFingerPrintState createState() => AppSetFingerPrintState();
}

class AppSetFingerPrintState extends State<AppSetFingerPrint> {
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
                Image.asset(App_login, width: width / 2.5, height: width / 2.5),
                text(App_lbl_fingerprint,
                    textColor: AppTextColorPrimary,
                    fontFamily: fontBold,
                    fontSize: 22.0),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30,  bottom: 16),
                  child: text(App_note_finger_set,
                      textColor: AppTextColorSecondary,
                      fontFamily: fontMedium,
                      fontSize: textSizeMedium,
                      maxLine: 2,
                      isCentered: true),
                ),
                SizedBox(height: 50),
                GestureDetector(
                    onTap: (){
                    },
                    child: SvgPicture.asset(App_img_fingerprint,width: width/3.5,color: AppColorPrimary)),
                SizedBox(height: 50),

                GestureDetector(
                  onTap: () {
                    finish(context);
                  },
                  child: Container(
                    margin: EdgeInsets.all( 24),
                    alignment: Alignment.center,
                    height: width / 8,
                    child: text(App_continue, textColor: AppWhite, isCentered: true),
                    decoration: boxDecoration(bgColor: AppColorPrimary, radius: 24),
                  ),
                ),
              ],
            ),
          ),
        ),
          TopBar()
        ],
      ),
    );
  }
}
