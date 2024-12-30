import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrimaryButtonDs extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color? foregroundColor;
  final double height;
  final double width;
  final IconData? icon;
  final double? borderRadius;
  final bool? socialButton;
  final String? socialIconPath;

  const PrimaryButtonDs({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = AppColors.primaryColor,
    this.foregroundColor = Colors.white,
    this.height = 48,
    this.width = double.infinity,
    this.icon = Icons.arrow_forward_rounded,
    this.borderRadius = 40,
    this.socialButton = false,
    this.socialIconPath,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        fixedSize: Size(width, height),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        textStyle: theme.textTheme.bodyLarge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          socialButton == true && socialIconPath != null
              ? SvgPicture.asset(
                  socialIconPath ?? '',
                  package: AppImage.packageName,
                )
              : const SizedBox.shrink(),
          const Spacer(),
          Text(
            title,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: foregroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          if (icon != null)
            Icon(
              icon,
              size: 24,
              color: foregroundColor,
            ),
        ],
      ),
    );
  }
}
