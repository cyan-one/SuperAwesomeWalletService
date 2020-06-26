
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saws/main/utils/AppConstant.dart';
import 'package:saws/Wallet/screens/AppSetPassword.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
class AppVerification extends StatefulWidget {
  static String tag = '/AppVerification';
  @override
  AppVerificationState createState() => AppVerificationState();
}
class AppVerificationState extends State<AppVerification> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
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
                  Image.asset(App_verification,width: width/2.5,height: width/2.5),
                  SizedBox(height: 30,),
                  text(App_lbl_verification,textColor: AppTextColorPrimary,fontFamily: fontBold,fontSize: 22.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 16),
                    child: text(App_note_verification,textColor: AppTextColorSecondary,fontFamily: fontMedium,fontSize: textSizeMedium,maxLine: 2,isCentered: true),
                  ),
                  Container(
                    margin: EdgeInsets.all(24) ,
                    decoration: boxDecoration(bgColor: AppWhite,showShadow: true,radius: 4),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(height: 10),
                        PinEntryTextField(
                          fields: 4,
                          fontSize: textSizeNormal,
                        ),
                        SizedBox(height: 24,),
                        GestureDetector(
                          onTap: (){
                            launchScreen(context, AppSetPassword.tag);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: width/8,
                            child: text(App_continue,textColor: AppWhite,isCentered: true),
                            decoration: boxDecoration(bgColor: AppColorPrimary,radius: 8),
                          ),
                        )

                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      showToast(context,App_resend);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10,right: 10),
                      child: text(App_resend,textColor: AppColorPrimary,fontSize: textSizeLargeMedium,fontFamily: fontSemibold),
                    ),
                  )


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