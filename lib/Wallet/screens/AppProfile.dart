import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saws/Wallet/model/AppModels.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppConstant.dart';
import 'package:saws/Wallet/utils/AppDataGenerator.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppBubbleBotoomBar.dart';
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/widgets/AppGridListing.dart';
import 'package:saws/Wallet/utils/widgets/AppSlider.dart';
import 'package:saws/Wallet/utils/widgets/AppSliderWidget.dart';

class AppProfile extends StatefulWidget {
  static var tag = "/AppProfile";

  @override
  AppProfileState createState() => AppProfileState();
}

class AppProfileState extends State<AppProfile> {
  double width;

  @override
  void initState() {
    super.initState();
  }

  var currentIndex = 0;
  var  iconList=<String>[App_analysis,App_wallet_2,App_customer_service,App_img_settings];
  var  nameList=<String>[App_statistics,App_manage_wallet,App_support,App_settings];

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  Widget gridItem(int pos){
    return Container(
        width: (width-(16*3))/2,
        height: (width-(16*3))/2,
        decoration: boxDecoration(radius: 24,showShadow: true,bgColor: AppWhite),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(iconList[pos],width: width/7,height: width/7,),
            text(nameList[pos],fontSize: textSizeNormal,textColor: AppTextColorPrimary,fontFamily: fontSemibold)
          ],
        ));
  }
  @override
  Widget build(BuildContext context) {
    changeStatusColor(AppDarkNavy);
     width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppLayoutBackgroundWhite,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              height: width,
              color: AppDarkNavy,
              child: Container(
                alignment: Alignment.center,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        size: 40,
                        color: AppWhite,
                      ),
                      onPressed: () {
                        finish(context);
                      },
                    ),
                    text("Account",
                        textColor: AppWhite,
                        fontSize: textSizeNormal,
                        fontFamily: fontMedium),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: SvgPicture.asset(
                        App_options,
                        width: 25,
                        height: 25,
                        color: AppWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 80),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    padding: EdgeInsets.only(top: 60),
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        color: AppLayoutBackgroundWhite,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        text("Emily Jonas",
                            textColor: AppTextColorPrimary,
                            fontFamily: fontMedium,
                            fontSize: textSizeNormal),
                        text(App_txt_phone_number,
                            fontSize: textSizeLargeMedium),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 8,
                                  child: LinearProgressIndicator(
                                    value: 0.5, // percent filled
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        AppSkyBlue),
                                    backgroundColor: Color(0XFFD7DCE0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  text("Wallet Security",
                                      fontSize: textSizeMedium,
                                      fontFamily: fontSemibold),
                                  text("50%",
                                      textColor: AppSkyBlue,
                                      fontFamily: fontBold,
                                      fontSize: textSizeNormal)
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            gridItem(0),
                            gridItem(1)
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            gridItem(2),
                            gridItem(3)
                          ],
                        ),
                        SizedBox(height: 16),

                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(App_profile_8),
                    radius: 50,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: currentIndex,
        elevation: 8,
        onTap: changePage,
        //new
        hasNotch: false,
        //new
        hasInk: true,
        //new, gives a cute ink effect
        inkColor: AppColorPrimaryLight,
        //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          tab(App_img_home, App_home),
          tab(App_list_check, App_lbl_listing),
          tab(App_notification_2, App_notification),
          tab(App_user, App_lbl_profile),
        ],
      ),
    );
  }
}
