import 'package:flutter_composite/utils/component.dart';

class Leaf implements Component {
  final _name;

  Leaf(this._name);

  @override
  void add(Component component) {
    // 何もしない
  }

  @override
  void disp() {
    print('子なしです。名前は $_name です。');
  }
}