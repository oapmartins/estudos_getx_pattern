import 'package:estudos_getx/modules/endereco/endereco_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class EnderecoPage extends GetView<EnderecoController> {
  const EnderecoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Endereco'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Column(
                  children: [
                    Text(
                      controller.loading.value ? 'Carregando...' : 'Carrego com sucesso',
                    ),
                    Visibility(
                      visible: controller.loading.value,
                      child: const CircularProgressIndicator(),
                    ),
                  ],
                )),
            TextField(
              onChanged: (value) {},
            ),
            Obx(() => Column(
                  children: [
                    Text('Cep: ${controller.endereco.value.cep}'),
                    Text('Rua: ${controller.endereco.value.logradouro}'),
                    Text('Bairro: ${controller.endereco.value.bairro}'),
                    Text('Estado: ${controller.endereco.value.uf}'),
                  ],
                )),
            TextButton(
              onPressed: () {
                controller.buscarEndereco(cep: '01001000');
              },
              child: const Text('Clicar no teste'),
            ),
          ],
        ),
      ),
    );
  }
}
