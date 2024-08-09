import 'package:estudos_getx/core/bindings/aplication_bindings.dart';
import 'package:estudos_getx/routes/endereco_routers.dart';
import 'package:estudos_getx/routes/home_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      initialBinding: AplicationBindings(),
      getPages: [
        ...HomeRouters.routers,
        ...EnderecoRouters.routers,
      ],
    );
  }
}
