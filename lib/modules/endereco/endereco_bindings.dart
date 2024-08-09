import 'package:estudos_getx/modules/endereco/endereco_controller.dart';
import 'package:estudos_getx/repositories/endereco/endereco_repository.dart';
import 'package:estudos_getx/repositories/endereco/endereco_service.dart';
import 'package:get/get.dart';

class EnderecoBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(EnderecoService(Get.find()));
    Get.put(EnderecoRepository(Get.find()));
    Get.lazyPut(() => EnderecoController(Get.find()));
  }
}
