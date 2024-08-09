import 'package:estudos_getx/modules/endereco/endereco_bindings.dart';
import 'package:estudos_getx/modules/endereco/endereco_page.dart';
import 'package:get/get.dart';

class EnderecoRouters {
  EnderecoRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/endereco',
      binding: EnderecoBindings(),
      page: () => const EnderecoPage(),
    ),
  ];
}
