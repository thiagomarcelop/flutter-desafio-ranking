import 'dart:convert';

import 'package:flutter_desafio_ranking/app/modules/models/usuario_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class HomeRepository extends Disposable {
  Future<List<UsuarioModel>> getUsuarios(Dio client) async {
    final response = await client.get(
        'https://raw.githubusercontent.com/thiagomarcelop/mock-data/master/flutter-desafio-ranking');
    return UsuarioModel.fromJsonList(json.decode(response.data) as List);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
