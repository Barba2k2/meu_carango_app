import 'package:flutter/material.dart';

import '../../design_system.dart';

class TextInputDs extends StatefulWidget {
  final String label;
  final String hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final double height;
  final double width;
  final bool isFilled;
  final bool isPassword;
  final TextInputType textInputType;
  final ValueChanged<String>? onChanged;
  final AutovalidateMode? autovalidateMode;
  final Widget? prefixIcon;
  final TextStyle? labelStyle;
  final bool darkMode;

  const TextInputDs({
    super.key,
    required this.label,
    required this.hint,
    this.controller,
    this.validator,
    this.height = 56,
    this.width = double.infinity,
    this.isFilled = true,
    this.isPassword = false,
    this.onChanged,
    this.autovalidateMode,
    this.textInputType = TextInputType.text,
    this.prefixIcon,
    this.labelStyle,
    this.darkMode = false,
  });

  @override
  State<TextInputDs> createState() => _TextInputDsState();
}

class _TextInputDsState extends State<TextInputDs> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: TextFormField(
        autovalidateMode: widget.autovalidateMode,
        keyboardType: widget.textInputType,
        obscureText: _isObscure,
        controller: widget.controller,
        validator: widget.validator,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: Icon(
                    _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    color: widget.darkMode ? AppColors.whiteColor : AppColors.blackColor,
                  ),
                )
              : null,
          labelText: widget.label,
          labelStyle: widget.labelStyle ?? theme.textTheme.bodyLarge,
          hintText: widget.label,
          hintStyle: widget.labelStyle ?? theme.textTheme.bodyLarge,
          filled: widget.isFilled,
          fillColor: widget.darkMode ? AppColors.inputColorDark : AppColors.inputColorLight,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100),
          ),
          prefixIcon: widget.prefixIcon,
        ),
      ),
    );
  }
}
