import 'package:flutter/material.dart';
import 'package:saws/Wallet/model/AppModels.dart';
import 'package:saws/Wallet/utils/AppImages.dart';
import 'package:saws/main/utils/AppColors.dart';

List<AppCategory> getCategoryItems() {
  var list = List<AppCategory>();

  var category1 = AppCategory();
  category1.name = "Transfer";
  category1.color = AppCat1;
  category1.icon = App_paperplane;
  list.add(category1);
  var category2 = AppCategory();
  category2.name = "Wallet";
  category2.color = AppCaApp;
  category2.icon = App_wallet;
  list.add(category2);
  var category3 = AppCategory();
  category3.name = "Voucher";
  category3.color = AppCat3;
  category3.icon = App_coupon;
  list.add(category3);
  var category4 = AppCategory();
  category4.name = "Pay Bill";
  category4.color = AppCat4;
  category4.icon = App_invoice;
  list.add(category4);

  var category5 = AppCategory();
  category5.name = "Exchange";
  category5.color = AppCaApp;
  category5.icon = App_dollar_exchange;
  list.add(category5);

  var category = AppCategory();
  category.name = "More";
  category.color = AppCat6;
  category.icon = App_circle;
  list.add(category);
  return list;
}

List<AppCategory> getBottomSheetItems() {
  var list = List<AppCategory>();
  var category1 = AppCategory();
  category1.name = "Transfer";
  category1.color = AppCat1;
  category1.icon = App_paperplane;
  list.add(category1);
  var category2 = AppCategory();
  category2.name = "Wallet";
  category2.color = AppCaApp;
  category2.icon = App_wallet;
  list.add(category2);
  var category3 = AppCategory();
  category3.name = "Voucher";
  category3.color = AppCat3;
  category3.icon = App_coupon;
  list.add(category3);
  var category4 = AppCategory();
  category4.name = "Pay Bill";
  category4.color = AppCat4;
  category4.icon = App_invoice;
  list.add(category4);

  var category5 = AppCategory();
  category5.name = "Exchange";
  category5.color = AppCaApp;
  category5.icon = App_dollar_exchange;
  list.add(category5);

  var category6 = AppCategory();
  category6.name = "Services";
  category6.color = AppCat6;
  category6.icon = App_circle;
  list.add(category6);

  var category9 = AppCategory();
  category9.name = "Crypto";
  category9.color = AppCat3;
  category9.icon = App_invoice;
  list.add(category9);
  var category11 = AppCategory();
  category11.name = "Mobile";
  category11.color = AppCaApp;
  category11.icon = App_dollar_exchange;
  list.add(category11);

  var category12 = AppCategory();
  category12.name = "Services";
  category12.color = AppCat6;
  category12.icon = App_circle;
  list.add(category12);

  var category7 = AppCategory();
  category7.name = "Pay Bill";
  category7.color = AppCat4;
  category7.icon = App_invoice;
  list.add(category7);
  var category8 = AppCategory();
  category8.name = "Exchange";
  category8.color = AppCaApp;
  category8.icon = App_dollar_exchange;
  list.add(category8);

  var category10 = AppCategory();
  category10.name = "Services";
  category10.color = AppCat6;
  category10.icon = App_circle;
  list.add(category10);

  return list;
}

List<AppSlider> getSliders() {
  List<AppSlider> list = List<AppSlider>();
  AppSlider model1 = AppSlider();
  model1.balance = "\$150000";
  model1.accountNo = "145 250 230 120 150";
  model1.image = App_bg_card_2;
  AppSlider model2 = AppSlider();
  model2.balance = "\$150000";
  model2.accountNo = "145 250 230 120 150";
  model2.image = App_bg_card_1;
  AppSlider model3 = AppSlider();
  model3.balance = "\$150000";
  model3.accountNo = "145 250 230 120 150";
  model3.image = App_bg_card_3;

  list.add(model1);
  list.add(model2);
  list.add(model3);
  return list;
}

List<AppBill> getListData() {
  var list = List<AppBill>();
  var bill = AppBill();
  bill.name = "Electric bill";
  bill.day = "22";
  bill.icon = App_light_bulb;
  bill.amount = "\$155.00";
  bill.date = "10/2/2019";

  list.add(bill);

  var bill1 = AppBill();
  bill1.name = "Water bill";
  bill1.day = "20";
  bill1.icon = App_drop;
  bill1.amount = "\$855.00";
  bill1.date = "10/2/2019";

  list.add(bill1);

  var bill2 = AppBill();
  bill2.name = "Water bill";
  bill2.day = "12";
  bill2.icon = App_drop;
  bill2.amount = "\$155.00";
  bill2.isPaid = true;
  bill2.date = "10/2/2019";

  list.add(bill2);

  var bill3 = AppBill();
  bill3.name = "Phone bill";
  bill3.day = "12";
  bill3.icon = App_call_answer;
  bill3.amount = "\$25.00";
  bill3.date = "10/2/2019";

  list.add(bill3);

  var bill4 = AppBill();
  bill4.name = "Internet bill";
  bill4.day = "11";
  bill4.icon = App_wifi;
  bill4.amount = "\$70.00";
  bill4.date = "10/2/2019";

  list.add(bill4);
  var bill5 = AppBill();
  bill5.name = "Electric bill";
  bill5.day = "10";
  bill5.icon = App_light_bulb;
  bill5.amount = "\$600.00";
  bill5.date = "10/2/2019";
  bill5.isPaid = true;
  list.add(bill);
  list.add(bill2);
  list.add(bill);
  list.add(bill);
  list.add(bill1);
  list.add(bill2);
  list.add(bill3);
  list.add(bill4);
  list.add(bill);
  list.add(bill1);
  list.add(bill2);
  list.add(bill3);
  list.add(bill4);

  return list;
}

List<AppContact> getRecents() {
  var list = List<AppContact>();

  var people5 = AppContact();
  people5.img = App_profile_8;
  people5.name = "Nia Scott";
  people5.contactno = "2589634589";
  list.add(people5);

  var people6 = AppContact();
  people6.img = App_profile_9;
  people6.name = "Smith Scott";
  people6.contactno = "2589634589";
  list.add(people6);
  var people7 = AppContact();
  people7.img = App_profile_9;
  people7.name = "Skyla Scott";
  people7.contactno = "2589634589";
  list.add(people7);
  return list;
}

List<AppContact> getPending() {
  var list = List<AppContact>();

  var people = AppContact();
  people.img = App_profile_3;
  people.name = "Alice Smith";
  people.contactno = "2596854562";
  people.isOnline = true;
  list.add(people);

  var people2 = AppContact();
  people2.img = App_profile_4;
  people2.name = "Hennah Tran";
  people2.contactno = "2596854562";

  list.add(people2);

  var people3 = AppContact();
  people3.img = App_profile_6;
  people3.name = "Louisa MacGee";
  people3.contactno = "2596854562";
  list.add(people3);

  var people4 = AppContact();
  people4.img = App_profile_7;
  people4.name = "Walter James";
  people4.contactno = "2596854562";
  people4.isOnline = true;
  list.add(people4);

  var people5 = AppContact();
  people5.img = App_profile_8;
  people5.name = "Nia Scott";
  people5.contactno = "2596854562";
  list.add(people5);

  var people6 = AppContact();
  people6.img = App_profile_9;
  people6.name = "Smith Scott";
  people6.contactno = "2596854562";
  list.add(people6);
  var people7 = AppContact();
  people7.img = App_profile_9;
  people7.name = "Skyla Scott";
  people7.contactno = "2596854562";
  list.add(people7);
  list.add(people);
  list.add(people2);
  list.add(people3);
  list.add(people4);
  list.add(people5);
  list.add(people6);
  list.add(people7);
  return list;
}
