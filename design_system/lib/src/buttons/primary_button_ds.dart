import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class PrimaryButtonDs extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final double height;
  final double width;
  final IconData? icon;
  final double? borderRadius;

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
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12),
        fixedSize: Size(width, height),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Center(
            child: Text(
              title,
              style: theme.textTheme.labelMedium,
            ),
          ),
          Positioned(
            right: 24,
            child: Icon(
              icon,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}