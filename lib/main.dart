import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lucid_validation/lucid_validation.dart';
import 'package:provider/provider.dart';

import 'src/app_widget.dart';
import 'src/core/DI/dependency_injector.dart';
import 'src/core/theme/controller/theme_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await dotenv.load(fileName: '.env');
  final culture = Culture('pt', 'BR');
  LucidValidation.global.culture = culture;

  setupDependencyInjector(
    /// Ao ativar essa flag, você vai ter um log das chamadas e respostas da API
    /// no console do seu editor de codigo, por padrão é desabilitado.
    // loggerAPI: true,
  );

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeController(),
      child: const MeuCarangoApp(),
    ),
  );
}
