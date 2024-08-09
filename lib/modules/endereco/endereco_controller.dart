import 'package:estudos_getx/data/models/endereco_model.dart';
import 'package:estudos_getx/data/repositories/endereco_repository.dart';
import 'package:get/get.dart';

class EnderecoController extends GetxController {
  final EnderecoRepository _enderecoRepository;
  EnderecoController(this._enderecoRepository);

  RxBool loading = false.obs;
  Rx<EnderecoModel> endereco = EnderecoModel().obs;

  buscarEndereco({required String cep}) async {
    loading(true);

    try {
      endereco.value = await _enderecoRepository.getEndereco(cep: cep);
    } catch (e) {
      print(e);
    } finally {
      loading(false);
    }
  }
}
