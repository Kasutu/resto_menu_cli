import 'package:resto_menu_cli/resto_menu.dart';

void main(List<String> arguments) {
  // main entry
  RestoMenuHelper.menu.add(name: 'apple', price: 35);
  RestoMenuHelper.menu.add(name: 'banana', price: 95);
  RestoMenuHelper.menu.add(name: 'cem', price: 10000);
  RestoMenuHelper.menu.add(name: 'def', price: 10000);
  RestoMenuHelper.menu.add(name: 'e', price: 10000);
  RestoMenuHelper.menu.add(name: 'fr', price: 342432);
  RestoMenuHelper.menu.add(name: 'grdw', price: 342432);
  RestoMenuHelper.menu.add(name: 'hraaa', price: 342432);
  RestoMenuHelper.menu.add(name: 'irdddd', price: 342432);

  // RestoMenuHelper.menu.display();

  RestoMenuHelper.menu.query(value: 'g');

  RestoMenuHelper.menu.toNewest();
  RestoMenuHelper.menu.toOldest();
  RestoMenuHelper.menu.toAlphabeticalOrder();
}
