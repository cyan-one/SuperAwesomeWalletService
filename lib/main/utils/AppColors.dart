import 'package:flutter/material.dart';

const AppColorPrimary=Color(0XFF5104D7);
const AppColorPrimaryDark=Color(0XFF325BF0);
const App_colorPrimaryLight = Color(0XFFF2ECFD);
const AppColorAccent=Color(0XFFD81B60);
const AppTextColorPrimary=Color(0XFF130925);
const AppTextColorSecondary=Color(0XFF888888);
const AppTextColorThird=Color(0XFFBABFB6);
const AppTextColorGrey=Color(0XFFB4BBC2);
const AppWhite=Color(0XFFFFFFFF);
const AppViewColor=Color(0XFFB4BBC2);
const AppSkyBlue=Color(0XFF1fc9cd);
const AppDarkNavy=Color(0XFF130925);
const AppCat1=Color(0XFF45c7db);
const AppCaApp=Color(0XFF510AD7);
const AppCat3=Color(0XFFe43649);
const AppCat4=Color(0XFFf4b428);
const AppCat6=Color(0XFF203afb);
const AppShadowColor = Color(0X95E9EBF0);
const AppDarkRed=Color(0XFFF06263);
const AppColorPrimaryLight=Color(0X505104D7);

const App_edit_text_background= Color(0XFFE8E8E8);
const App_colorAccent = Color(0XFF7e05fa);
const App_textColorPrimary = Color(0XFF212121);
const App_textColorSecondary = Color(0XFF747474);
const App_app_background = Color(0XFFf8f8f8);
const App_view_color = Color(0XFFDADADA);
const App_white = Color(0XFFFFFFFF);
const App_icon_color = Color(0XFF747474);
const App_blue = Color(0XFF1C38D3);
const App_orange = Color(0XFFFF5722);
const App_background_bottom_navigation = Color(0XFFE9E7FE);
const App_background_selected = Color(0XFFF3EDFE);
const App_green = Color(0XFF5CD551);
const App_red = Color(0XFFFD4D4B);
const App_card_background = Color(0XFFFaFaFa);
const App_bg_bottom_sheet = Color(0XFFE8E6FD);
const App_instagram_pink = Color(0XFFCC2F97);
const App_linkedin_pink = Color(0XFF0c78b6);
var ApplightStatusBar = materialColor(0XFFEAEAF9);
const shadow_color = Color(0XFFECECEC);

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

MaterialColor materialColor(colorHax) {
  return MaterialColor(colorHax, color);
}

MaterialColor colorCustom = MaterialColor(0XFF5959fc, color);
