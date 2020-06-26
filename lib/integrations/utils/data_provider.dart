import 'package:saws/integrations/models/ContentModel.dart';
import 'package:saws/integrations/screens/bottom_sheet_screen.dart';
import 'package:saws/integrations/screens/button_screen.dart';
import 'package:saws/integrations/screens/card_screen.dart';
import 'package:saws/integrations/screens/fluid_slider_screen.dart';
import 'package:saws/integrations/screens/folding_cell_screen.dart';
import 'package:saws/integrations/screens/google_map_screen.dart';
import 'package:saws/integrations/screens/liquid_pull_to_refresh_screen.dart';
import 'package:saws/integrations/screens/liquid_swipe_screen.dart';
import 'package:saws/integrations/screens/picker_screen.dart';
import 'package:saws/integrations/screens/razorpay_screen.dart';
import 'package:saws/integrations/screens/shader_mask_screen.dart';
import 'package:saws/integrations/screens/singature_screen.dart';
import 'package:saws/integrations/screens/wave_screen.dart';
import 'package:saws/integrations/utils/colors.dart';

import '../app_localizations.dart';

Future<List<ContentModel>> getContents(context) async {
  var localization = AppLocalizations.of(context);
  List<ContentModel> list = List();

  var cat1Item3 = ContentModel(title: 'Wave Widget', pageName: WaveScreen());
  var cat1Item4 = ContentModel(title: 'Signature Pad', pageName: SignatureScreen());
  var cat1Item5 = ContentModel(title: 'Liquid Swipe WalkThrough', pageName: LiquidSwipeScreen());
  list.add(ContentModel(title: 'Integrations', bgColor: appCat1, items: [cat1Item3, cat1Item4, cat1Item5]));

  var caAppItem1 = ContentModel(title: 'Buttons', bgColor: appCat4, pageName: ButtonScreen());
  var caAppItem2 = ContentModel(title: 'Cards', bgColor: appCaApp, pageName: CardScreen());
  var caAppItem3 = ContentModel(title: 'Pickers', bgColor: appCat6, pageName: PickerScreen());
  var caAppItem4 = ContentModel(title: 'Bottom Sheet', bgColor: appCat6, pageName: BottomSheetScreen());
  var caAppItem5 = ContentModel(title: 'Slider', bgColor: appCat6, pageName: FluidSliderScreen());
  var caAppItem6 = ContentModel(title: 'ShaderMask', bgColor: appCat6, pageName: ShaderMaskScreen());
  list.add(ContentModel(title: 'UI Interactions', bgColor: appCaApp, items: [caAppItem1, caAppItem2, caAppItem3, caAppItem4, caAppItem5, caAppItem6]));

  var cat3Item1 = ContentModel(title: 'Liquid Pull To Refresh', pageName: LiquidPullToRefreshScreen());
  var cat3Item2 = ContentModel(title: 'Folding Cell in ListView', pageName: FoldingCellScreen());
  list.add(ContentModel(title: 'Lists', pageName: GoogleMapScreen(), bgColor: appCat3, icon: 'ic_list.png', items: [cat3Item1, cat3Item2]));

  list.add(ContentModel(title: 'Maps', bgColor: appCat4, icon: 'ic_map_pin_line.png', items: [caAppItem1, caAppItem2]));

  var cat6Item1 = ContentModel(title: 'RazorPay Payment', pageName: RazorPayScreen());
  list.add(ContentModel(title: 'Payment Gateways', bgColor: appCaApp, icon: 'ic_payment.png', items: [cat6Item1]));

  return list;
}

Future<List<ContentModel>> getTopContents(context) async {
  var localization = AppLocalizations.of(context);
  List<ContentModel> list = List();

  list.add(ContentModel(title: 'Dark Mode', bgColor: primaryColor, icon: 'ic_dark_mode.png'));
  list.add(ContentModel(title: localization.translate('language'), bgColor: thirdColor, icon: 'ic_multi_language.png'));
  list.add(ContentModel(title: 'Coming Soon', bgColor: secondaryColor));

  return list;
}
