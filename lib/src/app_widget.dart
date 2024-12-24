import 'package:flutter/material.dart';

import '../routes.dart';

class MeuCarangoApp extends StatelessWidget {
  const MeuCarangoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Adote um Pet',
      // theme: AppTheme.theme,
      routerConfig: router,
    );
  }
}
