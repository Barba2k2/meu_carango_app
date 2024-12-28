import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../routes.dart';
import 'core/theme/controller/theme_controller.dart';

class MeuCarangoApp extends StatelessWidget {
  const MeuCarangoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeController>(
      builder: (context, themeController, _) {
        final window = View.of(context).platformDispatcher;
        final brightness = window.platformBrightness;

        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Meu Carango',
          themeMode: brightness == Brightness.light ? ThemeMode.light : ThemeMode.dark,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          routerConfig: router,
        );
      },
    );
  }
}
