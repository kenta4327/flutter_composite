import 'package:flutter_composite/utils/component.dart';

class Composite implements Component {
  List<Component> components = [];
  final _name;

  Composite(this._name);

  @override
  void add(Component component) {
    components.add(component);
  }

  @override
  void disp() {
    print('子ありです。名前は $_name です。');
    for (final component in components) {
      component.disp();
    }
  }
}