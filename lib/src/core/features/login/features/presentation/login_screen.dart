import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../theme/controller/theme_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeController = Provider.of<ThemeController>(context);
    final isDarkMode = themeController.isDarkMode;

    return Scaffold(
      backgroundColor: isDarkMode ? AppColors.darkBgColor : AppColors.whiteBgColor,
      body: SingleChildScrollView(
        child: Padding(
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
                    isDarkMode ? AppImage.loginDark : AppImage.login,
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
                  TextInputDs(
                    label: 'E-mail',
                    hint: 'E-mail',
                    isFilled: true,
                    darkMode: isDarkMode,
                  ),
                  TextInputDs(
                    label: 'Senha',
                    hint: 'Senha',
                    isPassword: true,
                    isFilled: true,
                    darkMode: isDarkMode,
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
              ),
              const SizedBox(
                height: 48,
              ),
              Column(
                spacing: 8,
                children: [
                  PrimaryButtonDs(
                    title: 'Entrar',
                    icon: null,
                    onPressed: () {},
                    foregroundColor: AppColors.whiteColor,
                  ),
                  Text(
                    'ou',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  PrimaryButtonDs(
                    title: 'Entrar com Google',
                    onPressed: () {},
                    icon: null,
                    backgroundColor: isDarkMode
                        ? AppColors.loginWithGoogleButtonBgDark
                        : AppColors.loginWithGoogleButtonBgLight,
                    foregroundColor: isDarkMode ? AppColors.whiteColor : AppColors.blackColor,
                    socialButton: true,
                    socialIconPath: AppImage.googleIcon,
                    borderRadius: 8,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nao tem conta ainda?',
                        style: theme.textTheme.bodyLarge,
                      ),
                      GestureDetector(
                        child: Text(
                          'Cadastrar',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        onTap: () {
                          context.go('/auth/register');
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
