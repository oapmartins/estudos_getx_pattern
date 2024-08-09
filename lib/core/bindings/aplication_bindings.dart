import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AplicationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio(), fenix: true);
  }
}
