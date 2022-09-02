mixin CustomLoop {
  void loop<K, V>({
    required Map<K, V> map,
    required Function(K key, V value) action,
    int index = 0,
    bool reversed = false,
    bool sortedKeys = false,
  }) {
    final keys = map.keys.toList();
    final values = map.values.toList();

    if (sortedKeys == true) keys.sort();

    while (reversed == true ? index != 0 : index < map.length) {
      action(keys[index], values[index]);
      reversed == true ? index-- : index++;
    }

    return;
  }
}

class RestoMenuInfoImpl with CustomLoop {
  // use key value pairs as the menu is typically small
  final Map<String, int> _menu = <String, int>{};

  void log(String type, String name, int price) {
    print('[$type] name: $name price: $price');
  }

  void display() {
    loop(
        map: _menu,
        action: (key, value) {
          log('MENU', key, value);
        });
  }

  void toNewest() {
    loop(
      map: _menu,
      action: (key, value) {
        log('NEWEST', key, value);
      },
      index: _menu.values.length - 1,
      reversed: true,
    );
  }

  void toOldest() {
    loop(map: _menu, action: (key, value) => log('OLDEST', key, value));
  }

  Map<String, int> toAlphabeticalOrder() {
    final sortedMenu = <String, int>{};

    loop(
      map: _menu,
      action: (key, value) {
        sortedMenu[key] = value;
        log('A-Z sort', key, value);
      },
      sortedKeys: true,
    );

    return sortedMenu;
  }

  void query({required String searchTerm}) {
    final searchTermString = searchTerm.toUpperCase();
    print('[ Searching for "$searchTerm" ]');

    final results = <Map<String, int>>[];

    loop(
        map: _menu,
        action: (key, value) {
          if (key.contains(searchTermString)) {
            results.add({key: value});
            log('QUERY', key, value);
          }
        });

    if (results.isEmpty) print('[QUERY] no results');
  }

  void add({required String name, required int price}) {
    final String upperName = name.toUpperCase();
    _menu[upperName] = price;
    print('[ADDED] name: $upperName price: $price');
  }
}
