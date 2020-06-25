import 'package:flutter/material.dart';
import 'package:saws/Wallet/model/AppModels.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';
import 'package:saws/Wallet/utils/widgets/AppSliderWidget.dart';
import 'package:saws/main/utils/AppColors.dart';

import '../AppConstant.dart';

class AppSliderWidget extends StatelessWidget {
  List<AppSlider> mSliderList;
  AppSliderWidget(this.mSliderList);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    width = width - 50;
    final Size cardSize = Size(width, width / 1.8);
    return AppCarouselSlider(
      viewportFraction: 0.9,
      height: cardSize.height,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
      items: mSliderList.map((slider) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: cardSize.height,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    slider.image,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: cardSize.height,
                  ),
                  Padding(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          text(App_avl_balance,
                            textColor: AppWhite,
                            fontSize: textSizeMedium,
                          ),
                          text(slider.balance,
                              textColor: AppWhite,
                              fontSize: textSizeLarge,
                              fontFamily: fontBold)
                        ],
                      ),
                      padding: EdgeInsets.all(14)),
                  Container(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              text(App_account_number, textColor: AppWhite, fontSize: textSizeMedium,),
                              text(slider.accountNo, textColor: AppWhite, fontSize: textSizeNormal)
                            ],
                          ),
                        ),
                        text("VISA",textColor: AppWhite,fontSize: textSizeLarge,fontFamily: fontBold)
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
