import 'package:flutter/material.dart';
import 'package:saws/model/Models.dart';
import 'package:saws/utils/Strings.dart';
import 'package:saws/utils/Widget.dart';
import 'package:saws/utils/widgets/SawsSliderWidget.dart';

import '../Colors.dart';
import '../Constant.dart';

class SawsSliderWidget extends StatelessWidget {
  List<AppSlider> mSliderList;
  SawsSliderWidget(this.mSliderList);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    width = width - 50;
    final Size cardSize = Size(width, width / 1.8);
    return CarouselSlider(
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
                          text(saws_avl_balance,
                            textColor: White,
                            fontSize: textSizeMedium,
                          ),
                          text(slider.balance,
                              textColor: White,
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
                              text(saws_account_number, textColor: White, fontSize: textSizeMedium,),
                              text(slider.accountNo, textColor: White, fontSize: textSizeNormal)
                            ],
                          ),
                        ),
                        text("VISA",textColor: White,fontSize: textSizeLarge,fontFamily: fontBold)
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
