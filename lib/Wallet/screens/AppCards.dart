import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saws/Wallet/model/AppModels.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppDataGenerator.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/AppConstant.dart';

class AppCards extends StatefulWidget {
  static var tag = "/AppCards";

  @override
  AppCardsState createState() => AppCardsState();
}

class AppCardsState extends State<AppCards> {
  int selectedPos = 1;
  List<AppBill> mCards;

  @override
  void initState() {
    super.initState();
    selectedPos = 1;
    mCards = getListData();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    changeStatusColor(AppWhite);
    return Scaffold(
      backgroundColor: AppWhite,
      body: Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopBar(),
            Padding(
              padding: const EdgeInsets.only(left:20.0,top: 20),
              child: text(App_bills,
                  textColor: AppTextColorPrimary,
                  fontFamily: fontBold,
                  fontSize: textSizeXLarge),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left:20.0,right: 20),
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    itemCount: mCards.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 16,mainAxisSpacing: 16),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.only(left:16,right: 16),
                        decoration: boxDecoration(radius: 16,showShadow: true),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SvgPicture.asset(mCards[index].icon,width: width/13,height: width/13,),
                            SizedBox(height: 10),
                            text(mCards[index].name,textColor: AppTextColorPrimary,fontSize: textSizeLargeMedium,fontFamily: fontSemibold),
                            text(mCards[index].date,fontSize: textSizeMedium),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: mCards[index].isPaid ? boxDecoration(bgColor: AppDarkRed, radius: 16)
                                  : boxDecoration(bgColor: AppSkyBlue, radius: 16),
                              child: text(mCards[index].isPaid?"Paid":"Unpaid",
                                  fontSize: textSizeMedium,
                                  textColor: AppWhite),
                            ),
                          ],
                        ),
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
