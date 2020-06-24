import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saws/model/Models.dart';
import 'package:saws/utils/AppWidget.dart';
import 'package:saws/utils/Colors.dart';
import 'package:saws/utils/Strings.dart';
import 'package:saws/utils/Images.dart';
import 'package:saws/utils/Constant.dart';
import 'package:saws/utils/DataGenerator.dart';
import 'package:saws/utils/widgets/GridListing.dart';
import 'package:saws/utils/widgets/SawsSlider.dart';

class Profile extends StatefulWidget {
  static var tag = "/Profile";

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  bool passwordVisible = false;
  bool isRemember = false;
  var currentIndexPage = 0;
  List<Category> mFavouriteList;
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
    changeStatusColor(DarkNavy);
    var width = MediaQuery.of(context).size.width;
    width = width - 50;
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: DarkNavy,
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
                         backgroundImage: AssetImage(saws_profile_8),
                         radius:25,
                       ),
                       SizedBox(width: 16),
                       text(saws_username,textColor: White,fontSize: textSizeNormal,fontFamily: fontMedium)
                     ],
                   ),
                   SvgPicture.asset(saws_options,width: 25,height: 25,color: White,)
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
                  color: LayoutBackgroundWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    SawsSliderWidget(mSliderList),
                    SizedBox(height: 20),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: GridListing(mFavouriteList,false),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}