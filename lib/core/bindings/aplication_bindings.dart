import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AplicationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => Dio(BaseOptions(baseUrl: 'https://viacep.com.br/ws/')),
      fenix: true,
    );
  }
}
