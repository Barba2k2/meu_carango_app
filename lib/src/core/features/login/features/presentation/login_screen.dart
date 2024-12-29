import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 300,
                height: 300,
                child: SvgPicture.asset(
                  AppImage.login,
                  package: AppImage.packageName,
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Column(
              spacing: 16,
              children: [
                const TextInputDs(
                  label: 'E-mail',
                  hint: 'E-mail',
                ),
                const TextInputDs(
                  label: 'Senha',
                  hint: 'Senha',
                  isPassword: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Esqueci minha senha',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
