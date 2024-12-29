import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../../../theme/controller/theme_controller.dart';
import '../data/onboarding_data.dart';

class OnboardingWidget extends StatelessWidget {
  final OnboardingData data;
  final int currentIndex;

  const OnboardingWidget({
    super.key,
    required this.data,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    final double imageHeight = currentIndex == 2 ? 380 : 214;
    final themeController = Provider.of<ThemeController>(context);
    final isDarkMode = themeController.isDarkMode;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          isDarkMode ? data.darkImage : data.lightImage,
          width: 330,
          height: imageHeight,
          package: AppImage.packageName,
          fit: BoxFit.contain,
        ),
        const Gap(64),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Text(
              data.title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              data.description,
              overflow: TextOverflow.clip,
              style: Theme.of(context).textTheme.bodyLarge,
              maxLines: 5,
            ),
          ],
        ),
      ],
    );
  }
}
