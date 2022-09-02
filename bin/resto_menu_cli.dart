import 'package:resto_menu_cli/resto_menu.dart';

void main(List<String> arguments) {
  // main entry
  RestoMenuHelper.menu.add(name: 'apple', price: 35);
  RestoMenuHelper.menu.add(name: 'banana', price: 95);
  RestoMenuHelper.menu.add(name: 'baboy', price: 95);
  RestoMenuHelper.menu.add(name: 'barny', price: 95);
  RestoMenuHelper.menu.add(name: 'cem', price: 43);
  RestoMenuHelper.menu.add(name: 'def', price: 54);
  RestoMenuHelper.menu.add(name: 'e', price: 77);
  RestoMenuHelper.menu.add(name: 'fr', price: 75);
  RestoMenuHelper.menu.add(name: 'grdw', price: 74);
  RestoMenuHelper.menu.add(name: 'hraaa', price: 65);
  RestoMenuHelper.menu.add(name: 'irdddd', price: 23);
  RestoMenuHelper.menu.add(name: 'dtndn', price: 35);
  RestoMenuHelper.menu.add(name: 'hdt', price: 95);
  RestoMenuHelper.menu.add(name: 'dbrgdb', price: 42);
  RestoMenuHelper.menu.add(name: 'fsfsvs', price: 55);
  RestoMenuHelper.menu.add(name: 'jdyjdjd', price: 75);
  RestoMenuHelper.menu.add(name: 'dyjdj', price: 43);
  RestoMenuHelper.menu.add(name: 'djryrjyf', price: 97);
  RestoMenuHelper.menu.add(name: 'fyjyrj', price: 56);
  RestoMenuHelper.menu.add(name: 'cyj', price: 86);
  RestoMenuHelper.menu.add(name: 'jgy', price: 35);
  RestoMenuHelper.menu.add(name: 'jgyjg', price: 95);
  RestoMenuHelper.menu.add(name: 'cemgmfdm', price: 98);
  RestoMenuHelper.menu.add(name: 'nfnf', price: 89);
  RestoMenuHelper.menu.add(name: 'nftnfn', price: 67);
  RestoMenuHelper.menu.add(name: 'fnf', price: 69);
  RestoMenuHelper.menu.add(name: 'ndtnds', price: 56);
  RestoMenuHelper.menu.add(name: 'nftnft', price: 75);
  RestoMenuHelper.menu.add(name: 'dbbdbrd', price: 48);

  // RestoMenuHelper.menu.display();

  RestoMenuHelper.menu.query(searchTerm: 'ba');

  RestoMenuHelper.menu.toNewest();
  RestoMenuHelper.menu.toOldest();
  RestoMenuHelper.menu.toAlphabeticalOrder();
}
