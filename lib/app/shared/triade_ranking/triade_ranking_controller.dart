import 'package:mobx/mobx.dart';

part 'triade_ranking_controller.g.dart';

class TriadeRankingController = _TriadeRankingControllerBase
    with _$TriadeRankingController;

abstract class _TriadeRankingControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
