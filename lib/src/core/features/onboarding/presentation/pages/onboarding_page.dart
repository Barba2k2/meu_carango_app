import 'dart:developer';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../../../theme/controller/theme_controller.dart';
import '../data/onboarding_data.dart';
import '../widget/onboarding_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < onboardingPages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      log('onboarding completed');
      // context.go('/auth/welcome');
    }
  }

  Widget _buildStepIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardingPages.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: index == _currentPage ? 24 : 12,
          height: 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: index == _currentPage ? AppColors.primaryColor : AppColors.greyColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(context);
    final isDarkMode = themeController.isDarkMode;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDarkMode ? AppColors.darkBgColor : AppColors.whiteBgColor,
        title: Center(
          child: SvgPicture.asset(
            isDarkMode ? AppImage.logoTextDark : AppImage.logoText,
            height: 20,
            width: 150,
            package: AppImage.packageName,
          ),
        ),
      ),
      body: Container(
        color: isDarkMode ? AppColors.darkBgColor : AppColors.whiteBgColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Spacer(flex: _currentPage == 2 ? 1 : 2),
              // Apenas o conteúdo central se move
              Expanded(
                flex: 30,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingPages.length,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardingWidget(
                      data: onboardingPages[index],
                      currentIndex: index,
                    );
                  },
                ),
              ),
              const Spacer(flex: 2),
              _buildStepIndicators(),
              const Gap(32),
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: PrimaryButtonDs(
                  title: _currentPage == onboardingPages.length - 1 ? 'Começar' : 'Avançar',
                  icon: _currentPage == onboardingPages.length - 1
                      ? null
                      : Icons.arrow_forward_rounded,
                  onPressed: _nextPage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
