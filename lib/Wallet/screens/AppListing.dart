import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saws/Wallet/model/AppModels.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppDataGenerator.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/AppConstant.dart';

class AppListing extends StatefulWidget {
  static var tag = "/AppListing";

  @override
  AppListingState createState() => AppListingState();
}

class AppListingState extends State<AppListing> {
  int selectedPos = 1;
  List<AppBill> mListings;

  @override
  void initState() {
    super.initState();
    selectedPos = 1;
    mListings = getListData();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    changeStatusColor(AppLayoutBackgroundWhite);

    return Scaffold(
      backgroundColor: AppLayoutBackgroundWhite,
      body: Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopBar(),
            Padding(
              padding: const EdgeInsets.only(left:20.0,top: 20),
              child: text(App_history,
                  textColor: AppTextColorPrimary,
                  fontFamily: fontBold,
                  fontSize: textSizeXLarge),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left:20.0,right: 20),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: mListings.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 18,bottom: 18),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    text("OCt",fontSize: textSizeSMedium),
                                    text(mListings[index].day,fontSize: textSizeLargeMedium,textColor: AppTextColorPrimary),
                                  ],
                                ),
                                Container(
                                  decoration: boxDecoration(radius: 8,showShadow: true),
                                  margin: EdgeInsets.only(left: 16,right: 16),
                                  width: width/7.2,
                                  height: width/7.2,
                                  child: SvgPicture.asset(mListings[index].icon),
                                  padding: EdgeInsets.all(width/30),
                                ),
                                Expanded(
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          text(mListings[index].name,textColor: AppTextColorPrimary,fontSize: textSizeMedium,fontFamily: fontSemibold),
                                          text(mListings[index].amount,textColor: AppTextColorPrimary,fontSize: textSizeMedium,fontFamily: fontSemibold)
                                        ],
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                      ),
                                      text("Mastercard",fontSize: textSizeMedium)

                                    ],
                                  ) ,
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 0.5,
                            color: AppViewColor,
                          )
                        ],
                      );
                    }),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
