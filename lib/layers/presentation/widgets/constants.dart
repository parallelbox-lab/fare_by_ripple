import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: const BorderSide(color: greyColor),
  );
}

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.zero,
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);