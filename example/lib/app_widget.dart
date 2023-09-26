import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mewnu/mewnu.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialBuilder.router(
      title: 'Mewnu Example',
      routerConfig: Modular.routerConfig,
      designSystem: MaterialDesignSystem(
        theme: MaterialThemeData(),
      ),
    ); //added by extension
  }
}
