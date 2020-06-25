
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

import 'AppDialog.dart';
class AppSignIn extends StatefulWidget {
  static String tag = '/AppSignIn';
  @override
  AppSignInState createState() => AppSignInState();
}
class AppSignInState extends State<AppSignIn> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(AppWhite);
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(App_login,width: width/2.5,height: width/2.5),
              text(App_heading_login,textColor: AppTextColorPrimary,fontFamily: fontBold,fontSize: 22.0),
              Container(
                margin: EdgeInsets.all(24) ,
                decoration: boxDecoration(bgColor: AppWhite,showShadow: true,radius: 4),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(height: 10),

                    EditText(hint: App_hint_phone_no,isPassword: false,),
                    SizedBox(height: 16,),
                    EditText(hint: App_hint_password,isSecure: true),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        showToast(context,App_forgot_pswd);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10,right: 10),
                        child: text(App_forgot_pswd,textColor: AppColorPrimary,fontSize: textSizeLargeMedium,fontFamily: fontSemibold),
                      ),
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              showToast(context, "Sign in clicked");
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 16),
                              alignment: Alignment.center,
                              height: width/8,
                              child: text(App_sign_in,textColor: AppWhite,isCentered: true),
                              decoration: boxDecoration(bgColor: AppColorPrimary,radius: 8),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => CustomDialog(),
                            );
                          },
                            child: SvgPicture.asset(App_img_fingerprint,width: width/8.2,color: AppViewColor))

                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}