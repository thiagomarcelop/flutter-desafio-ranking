import 'package:dio/dio.dart';
import 'package:flutter_desafio_ranking/app/modules/models/usuario_model.dart';
import 'package:mobx/mobx.dart';

import 'repositories/home_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final HomeRepository _repository;
  _HomeControllerBase(this._repository) {
    fillData(1);
  }

  @observable
  int selectedIndex = 1;

  @observable
  List<UsuarioModel> listaUsuariso = [];

  @action
  void changeIndex(int index) {
    selectedIndex = index;
    fillData(index);
  }

  @action
  Future fillData(int i) async {
    var result = await _repository.getUsuarios(Dio());

    List<UsuarioModel> novaLista = [];

    if (i == 0) {
      for (var item in result) {
        novaLista.add(item.copyWith(points: (item.points / 4).truncate()));
      }
    }

    if (i == 1) {
      novaLista = result;
    }

    if (i == 2) {
      for (var item in result) {
        novaLista.add(item.copyWith(points: (item.points * 4).truncate()));
      }
    }

    listaUsuariso = novaLista;
  }
}
