import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saws/Wallet/model/AppModels.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/main/utils/AppColors.dart';

import '../AppConstant.dart';

class AppGridListing extends StatelessWidget {
  List<AppCategory> mFavouriteList;
  var isScrollable=false;

  AppGridListing(this.mFavouriteList,this.isScrollable);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  GridView.builder(
        scrollDirection: Axis.vertical,
        physics: isScrollable?ScrollPhysics():NeverScrollableScrollPhysics(),
        itemCount: mFavouriteList.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,crossAxisSpacing: 16,mainAxisSpacing: 16),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){

            },
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: width/7.5,
                    width: width/7.5,
                    margin: EdgeInsets.only(bottom: 4,top: 8),
                    padding: EdgeInsets.all(width/30),
                    decoration: boxDecoration(bgColor: mFavouriteList[index].color,radius: 10),
                    child: SvgPicture.asset(mFavouriteList[index].icon,color: AppWhite,),
                  ),
                  text(mFavouriteList[index].name,fontSize: textSizeMedium)
                ],
              ),
            ),
          );
        });
  }
}
