class RestoMenuInfo {
  String name;
  int price;

  RestoMenuInfo(this.name, this.price);
}

class RestoMenuInfoImpl {
  // use key value pairs as the menu is typically small
  final Map<String, RestoMenuInfo> _menu = <String, RestoMenuInfo>{};
  static final int maxItemToDisplay = 3;

  void log(String type, RestoMenuInfo item) {
    print('[$type] name: ${item.name} price: ${item.price}');
  }

  void display() {
    final Iterable<RestoMenuInfo> items = _menu.values;

    for (var item in items) {
      log('MENU', item);
    }
  }

  void toNewest() {
    final List<RestoMenuInfo> values = _menu.values.toList();
    int index = _menu.values.length - 1;

    while (index != 0) {
      final item = values[index];
      log('NEWEST', item);

      index--;
    }
  }

  void toOldest() {
    for (RestoMenuInfo item in _menu.values) {
      log('OLDEST', item);
    }
  }

  Map<String, RestoMenuInfo> toAlphabeticalOrder() {
    final sortedMenu = <String, RestoMenuInfo>{};

    final List<String> keys = _menu.keys.toList();
    keys.sort();

    for (final key in keys) {
      final value = _menu[key];

      if (value != null) {
        sortedMenu[key] = value;
        log('A-Z ORDER', value);
      }
    }

    return sortedMenu;
  }

  void query({required String value}) {
    List<RestoMenuInfo?> results = [];

    print('[ Searching for "$value" ]');

    for (final String key in _menu.keys) {
      if (key.contains(value.toUpperCase())) results.add(_menu[key]);
    }

    for (var item in results) {
      if (item != null) {
        log('QUERY', item);
      }
      if (item == null) print('[QUERY] no results');
    }
  }

  void add({required String name, required int price}) {
    final String upperName = name.toUpperCase();
    final index = _menu.length;

    _menu[upperName] = RestoMenuInfo(upperName, price);
    print('[ADDED] { name: $upperName price: $price index: $index }');
  }
}
