import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final authFieldDecoration = InputDecoration(
  hintText: "Enter your email",
  hintStyle: style16.copyWith(color: hintTextColor),
  prefixIconColor: blackColor,
  suffixIconColor: blackColor,
  fillColor: whiteColor,
  filled: true,
  contentPadding: EdgeInsets.all(16),
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(16.r)),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(16.r)),
  errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(16.r)),
  disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(16.r)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 2.0),
      borderRadius: BorderRadius.circular(16.r)),
);
