import 'package:flutter/material.dart';
import 'package:saws/model/Models.dart';
import 'package:saws/utils/Images.dart';

import 'Colors.dart';

List<Category> getCategoryItems() {
  var list = List<Category>();

  var category1 = Category();
  category1.name = "Transfer";
  category1.color = Cat1;
  category1.icon = saws_paperplane;
  list.add(category1);
  var category2 = Category();
  category2.name = "Wallet";
  category2.color = Cat2;
  category2.icon = saws_wallet;
  list.add(category2);
  var category3 = Category();
  category3.name = "Voucher";
  category3.color = Cat3;
  category3.icon = saws_coupon;
  list.add(category3);
  var category4 = Category();
  category4.name = "Pay Bill";
  category4.color = Cat4;
  category4.icon = saws_invoice;
  list.add(category4);

  var category5 = Category();
  category5.name = "Exchange";
  category5.color = Cat5;
  category5.icon = saws_dollar_exchange;
  list.add(category5);

  var category = Category();
  category.name = "More";
  category.color = Cat6;
  category.icon = saws_circle;
  list.add(category);
  return list;
}

List<Category> getBottomSheetItems() {
  var list = List<Category>();
  var category1 = Category();
  category1.name = "Transfer";
  category1.color = Cat1;
  category1.icon = saws_paperplane;
  list.add(category1);
  var category2 = Category();
  category2.name = "Wallet";
  category2.color = Cat2;
  category2.icon = saws_wallet;
  list.add(category2);
  var category3 = Category();
  category3.name = "Voucher";
  category3.color = Cat3;
  category3.icon = saws_coupon;
  list.add(category3);
  var category4 = Category();
  category4.name = "Pay Bill";
  category4.color = Cat4;
  category4.icon = saws_invoice;
  list.add(category4);

  var category5 = Category();
  category5.name = "Exchange";
  category5.color = Cat5;
  category5.icon = saws_dollar_exchange;
  list.add(category5);

  var category6 = Category();
  category6.name = "Services";
  category6.color = Cat6;
  category6.icon = saws_circle;
  list.add(category6);

  var category9 = Category();
  category9.name = "Crypto";
  category9.color = Cat3;
  category9.icon = saws_invoice;
  list.add(category9);
  var category11 = Category();
  category11.name = "Mobile";
  category11.color = Cat5;
  category11.icon = saws_dollar_exchange;
  list.add(category11);

  var category12 = Category();
  category12.name = "Services";
  category12.color = Cat6;
  category12.icon = saws_circle;
  list.add(category12);

  var category7 = Category();
  category7.name = "Pay Bill";
  category7.color = Cat4;
  category7.icon = saws_invoice;
  list.add(category7);
  var category8 = Category();
  category8.name = "Exchange";
  category8.color = Cat5;
  category8.icon = saws_dollar_exchange;
  list.add(category8);

  var category10 = Category();
  category10.name = "Services";
  category10.color = Cat6;
  category10.icon = saws_circle;
  list.add(category10);

  return list;
}

List<AppSlider> getSliders() {
  List<AppSlider> list = List<AppSlider>();
  AppSlider model1 = AppSlider();
  model1.balance = "\$150000";
  model1.accountNo = "145 250 230 120 150";
  model1.image = saws_bg_card_2;
  AppSlider model2 = AppSlider();
  model2.balance = "\$150000";
  model2.accountNo = "145 250 230 120 150";
  model2.image = saws_bg_card_1;
  AppSlider model3 = AppSlider();
  model3.balance = "\$150000";
  model3.accountNo = "145 250 230 120 150";
  model3.image = saws_bg_card_3;

  list.add(model1);
  list.add(model2);
  list.add(model3);
  return list;
}

List<Bill> getListData() {
  var list = List<Bill>();
  var bill = Bill();
  bill.name = "Electric bill";
  bill.day = "22";
  bill.icon = saws_light_bulb;
  bill.amount = "\$155.00";
  bill.date = "10/2/2019";

  list.add(bill);

  var bill1 = Bill();
  bill1.name = "Water bill";
  bill1.day = "20";
  bill1.icon = saws_drop;
  bill1.amount = "\$855.00";
  bill1.date = "10/2/2019";

  list.add(bill1);

  var bill2 = Bill();
  bill2.name = "Water bill";
  bill2.day = "12";
  bill2.icon = saws_drop;
  bill2.amount = "\$155.00";
  bill2.isPaid = true;
  bill2.date = "10/2/2019";

  list.add(bill2);

  var bill3 = Bill();
  bill3.name = "Phone bill";
  bill3.day = "12";
  bill3.icon = saws_call_answer;
  bill3.amount = "\$25.00";
  bill3.date = "10/2/2019";

  list.add(bill3);

  var bill4 = Bill();
  bill4.name = "Internet bill";
  bill4.day = "11";
  bill4.icon = saws_wifi;
  bill4.amount = "\$70.00";
  bill4.date = "10/2/2019";

  list.add(bill4);
  var bill5 = Bill();
  bill5.name = "Electric bill";
  bill5.day = "10";
  bill5.icon = saws_light_bulb;
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

List<Contact> getRecents() {
  var list = List<Contact>();

  var people5 = Contact();
  people5.img = saws_profile_8;
  people5.name = "Nia Scott";
  people5.contactno = "2589634589";
  list.add(people5);

  var people6 = Contact();
  people6.img = saws_profile_9;
  people6.name = "Smith Scott";
  people6.contactno = "2589634589";
  list.add(people6);
  var people7 = Contact();
  people7.img = saws_profile_9;
  people7.name = "Skyla Scott";
  people7.contactno = "2589634589";
  list.add(people7);
  return list;
}

List<Contact> getPending() {
  var list = List<Contact>();

  var people = Contact();
  people.img = saws_profile_3;
  people.name = "Alice Smith";
  people.contactno = "2596854562";
  people.isOnline = true;
  list.add(people);

  var people2 = Contact();
  people2.img = saws_profile_4;
  people2.name = "Hennah Tran";
  people2.contactno = "2596854562";

  list.add(people2);

  var people3 = Contact();
  people3.img = saws_profile_6;
  people3.name = "Louisa MacGee";
  people3.contactno = "2596854562";
  list.add(people3);

  var people4 = Contact();
  people4.img = saws_profile_7;
  people4.name = "Walter James";
  people4.contactno = "2596854562";
  people4.isOnline = true;
  list.add(people4);

  var people5 = Contact();
  people5.img = saws_profile_8;
  people5.name = "Nia Scott";
  people5.contactno = "2596854562";
  list.add(people5);

  var people6 = Contact();
  people6.img = saws_profile_9;
  people6.name = "Smith Scott";
  people6.contactno = "2596854562";
  list.add(people6);
  var people7 = Contact();
  people7.img = saws_profile_9;
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
