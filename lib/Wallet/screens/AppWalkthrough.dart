import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:saws/main/utils/AppConstant.dart';
import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/utils/AppExtension.dart';
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/Wallet/utils/AppStrings.dart';
import 'package:saws/Wallet/utils/AppWidget.dart';

class AppWalkThrough extends StatefulWidget {
  static var tag = "/AppWalkThrough";

  @override
  AppWalkThroughState createState() => AppWalkThroughState();
}

class AppWalkThroughState extends State<AppWalkThrough> {
  int currentIndexPage = 0;
  var titles = [
    App_quickly_and_easily,
    App_shopping_online,
    App_manage_your_finance,
    App_welcome_to_mollet
  ];

  @override
  void initState() {
    super.initState();
    currentIndexPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(AppWhite);
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: PageView(
            children: <Widget>[
              WalkThrough(textContent: App_quickly_and_easily,bgImg: App_bg_walk_1,walkImg: App_ic_walk_1),
              WalkThrough(textContent: App_shopping_online,bgImg: App_walk_2,walkImg: App_ic_walk_3),
              WalkThrough(textContent: App_manage_your_finance,bgImg: App_bg_walk_3,walkImg: App_ic_walk_2),
              WalkThrough(textContent: App_welcome_to_mollet,walkImg: App_ic_walk_1),
            ],
            onPageChanged: (value) {
              setState(() => currentIndexPage = value);
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: DotsIndicator(
                dotsCount: 4,
                position: currentIndexPage,
                decorator: DotsDecorator(
                  size: const Size.square(8.0),
                  activeSize: const Size.square(12.0),
                  color: AppViewColor,
                  activeColor: AppColorPrimary,
                )),
          ),
        )
      ],
    ));
  }
}

class WalkThrough extends StatelessWidget {
  final String textContent;
  final String bgImg;
  final String walkImg;

  WalkThrough({Key key, this.textContent,this.bgImg,this.walkImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var  h= MediaQuery.of(context).size.height;
    var  width= MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: h*0.05),
                height:h* 0.5,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    bgImg!=null ?Image.asset(bgImg,width: width,height:h*0.5 ,fit: BoxFit.fill):Container(),
                    Image.asset(walkImg,width: width*0.8,height:h*0.6)
                  ],
                ),
              ),
              SizedBox(height: h*0.08,),
              text(textContent,textColor: AppTextColorPrimary,fontSize: textSizeNormal,fontFamily: fontMedium),
              Padding(
                padding: const EdgeInsets.only(left:28.0,right: 28.0),
                child: text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.simply duumy text ",fontSize: textSizeMedium,maxLine: 3,isCentered: true),
              )
            ],
          ),
        ),
        bgImg==null?Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: (){
              showToast(context, "Sign in clicked");
            },
            child: Container(
              margin: EdgeInsets.only(left: 16,right: 16,bottom: 50),
              alignment: Alignment.center,
              height: width/8,
              child: text(App_sign_in,textColor: AppWhite,isCentered: true),
              decoration: boxDecoration(bgColor: AppColorPrimary,radius: 8),
            ),
          ),
        ):Container()
      ],
    );
  }
}
