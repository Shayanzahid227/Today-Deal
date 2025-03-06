import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CustomHeader extends StatelessWidget {
  final String? title;
  final IconData? icon;
  const CustomHeader({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94.h,
      width: double.infinity,
      decoration: BoxDecoration(color: primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              navigator?.pop();
            },
            child: Icon(
              icon,
              size: 30,
              color: whiteColor,
            ),
          ),
          Text(
            title!,
            style: style25B.copyWith(
              fontSize: 18.sp,
            ),
          ),
          Text(
            'making ui response',
            style: style10.copyWith(color: primaryColor),
          )
        ],
      ),
    );
  }
}
