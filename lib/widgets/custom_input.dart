import 'package:dictionary_app/constants/app_strings.dart';
import 'package:dictionary_app/constants/colors.dart';

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController textEditingController;
  const CustomInputField({super.key, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      child: TextField(
        style: const TextStyle(
          color: AppColors.textColor,
        ),
        controller: textEditingController,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.appBarColor,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          hintText: AppStrings.helperText,
          hintStyle: appTheme.textTheme.bodyMedium,
          icon: const Icon(
            Icons.text_fields,
            color: AppColors.fillColor,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.appBarColor,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          filled: true,
          fillColor: AppColors.fillColor,
        ),
      ),
    );
  }
}
