import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:estudos_getx/data/models/endereco_model.dart';
import 'package:estudos_getx/data/services/endereco_service.dart';

class EnderecoRepository {
  final EnderecoService api;
  EnderecoRepository(this.api);

  Future<EnderecoModel> getEndereco({required String cep}) {
    try {
      return api.getEndereco(cep: cep);
    } on DioException catch (e, s) {
      log(
        'Erro ao consultar cep #${e.response?.statusCode}',
        error: e,
        stackTrace: s,
      );
      throw Exception('Erro ao consultar cep');
    }
  }
}
