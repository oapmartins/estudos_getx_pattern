import 'package:dio/dio.dart';
import 'package:estudos_getx/data/models/endereco_model.dart';
import 'package:retrofit/http.dart';
part 'endereco_service.g.dart';

@RestApi(baseUrl: 'https://viacep.com.br/ws/')
abstract class EnderecoService {
  factory EnderecoService(Dio dio, {String baseUrl}) = _EnderecoService;

  @GET('01001000/json')
  Future<EnderecoModel> getEndereco({@Query('cep') required String cep});
}
