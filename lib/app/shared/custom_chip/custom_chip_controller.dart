import 'package:mobx/mobx.dart';

part 'custom_chip_controller.g.dart';

class CustomChipController = _CustomChipControllerBase
    with _$CustomChipController;

abstract class _CustomChipControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
