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
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/widgets/AppBottomBar.dart';
import 'package:saws/Wallet/utils/widgets/AppGridListing.dart';
import 'package:saws/Wallet/utils/widgets/AppSlider.dart';

class AppDashboard extends StatefulWidget {
  static var tag = "/AppDashboard";

  @override
  AppDashboardState createState() => AppDashboardState();
}

class AppDashboardState extends State<AppDashboard> {
  bool passwordVisible = false;
  bool isRemember = false;
  var currentIndexPage = 0;
  List<AppCategory> mFavouriteList;
  List<AppSlider> mSliderList;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
    mFavouriteList = getCategoryItems();
    mSliderList = getSliders();
  }



  void changeSldier(int index) {
    setState(() {
      currentIndexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(AppDarkNavy);
    var width = MediaQuery.of(context).size.width;
    width = width - 50;
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: AppDarkNavy,
      key: _scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
             Container(
               height: 70,
               margin:EdgeInsets.all(16) ,
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       CircleAvatar(
                         backgroundImage: AssetImage(App_profile_8),
                         radius:25,
                       ),
                       SizedBox(width: 16),
                       text(App_username,textColor: AppWhite,fontSize: textSizeNormal,fontFamily: fontMedium)
                     ],
                   ),
                   SvgPicture.asset(App_options,width: 25,height: 25,color: AppWhite,)
                 ],
               ) ,
             ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 100),
              child: Container(
                padding: EdgeInsets.only(top: 28),
                alignment: Alignment.topLeft,
                height: MediaQuery.of(context).size.height-100,
                decoration: BoxDecoration(
                  color: AppLayoutBackgroundWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    AppSliderWidget(mSliderList),
                    SizedBox(height: 20),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: AppGridListing(mFavouriteList,false),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],

        ),
      ),
      bottomNavigationBar: AppBottomBar(),
    );
  }
}
