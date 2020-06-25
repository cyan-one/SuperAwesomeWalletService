import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:saws/main/utils/AppColors.dart';
import 'package:saws/Wallet/screens/AppBottomNavigation.dart';
import 'package:saws/Wallet/screens/AppBottomSheet.dart';
import 'package:saws/Wallet/screens/AppCards.dart';
import 'package:saws/Wallet/screens/AppDashboard.dart';
import 'package:saws/Wallet/screens/AppDialog.dart';
import 'package:saws/Wallet/screens/AppImageSlider.dart';
import 'package:saws/Wallet/screens/AppListing.dart';
import 'package:saws/Wallet/screens/AppProfile.dart';
import 'package:saws/Wallet/screens/AppSearch.dart';
import 'package:saws/Wallet/screens/AppSetFingerPrint.dart';
import 'package:saws/Wallet/screens/AppSetPassword.dart';
import 'package:saws/Wallet/screens/AppSettings.dart';
import 'package:saws/Wallet/screens/AppSignIn.dart';
import 'package:saws/Wallet/screens/AppSignUp.dart';
import 'package:saws/Wallet/screens/AppVerification.dart';
import 'package:saws/Wallet/screens/AppWalkthrough.dart';
import 'package:provider/provider.dart';
import 'integrations/app_localizations.dart';
import 'integrations/app_state.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (_) => AppState('en', colorCustom),
      child: Consumer<AppState>(builder: (context, provider, builder) {
        return  MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: [Locale('en'), Locale('hi')],
            localizationsDelegates: [AppLocalizations.delegate, GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
            localeResolutionCallback: (locale, supportedLocales) {
              return Locale(Provider.of<AppState>(context).selectedLanguageCode);
            },
            locale: Provider.of<AppState>(context).locale,
            routes: <String, WidgetBuilder>{

              /**Theme 5 screens routes*/
              AppSignIn.tag:(BuildContext context) =>AppSignIn(),
              AppSignUp.tag:(BuildContext context) =>AppSignUp(),
              AppVerification.tag:(BuildContext context) =>AppVerification(),
              AppSetFingerPrint.tag:(BuildContext context) =>AppSetFingerPrint(),
              AppSetPassword.tag:(BuildContext context) =>AppSetPassword(),
              AppDashboard.tag:(BuildContext context) =>AppDashboard(),
              AppBottomNavigation.tag:(BuildContext context) =>AppBottomNavigation(),
              AppBottomSheet.tag:(BuildContext context) =>AppBottomSheet(),
              AppListing.tag:(BuildContext context) =>AppListing(),
              AppCards.tag:(BuildContext context) =>AppCards(),
              AppSearch.tag:(BuildContext context) =>AppSearch(),
              AppSettings.tag:(BuildContext context) =>AppSettings(),
              AppProfile.tag:(BuildContext context) =>AppProfile(),
              AppWalkThrough.tag:(BuildContext context) =>AppWalkThrough(),
              AppImageSlider.tag:(BuildContext context) =>AppImageSlider(),
              AppDialog.tag:(BuildContext context) =>AppDialog(),

            },
            title: 'Prokit',
            theme: ThemeData(
                primarySwatch: colorCustom,
                backgroundColor: AppWhite,
                scaffoldBackgroundColor: AppWhite
            ),
            home: AppSignIn(),
            builder: (context, child) {
              return ScrollConfiguration(
                behavior: SBehavior(),
                child: child,
              );
            },
          );
      }),
    );

  }
}
class SBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
