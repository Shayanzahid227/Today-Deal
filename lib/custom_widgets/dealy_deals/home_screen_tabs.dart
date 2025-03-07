import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/home_top_rated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
///
///    this is not tabs but looking like tabs used in Home screen in  top rated ,near  by store and famous store section
///
///

class CustomHomeTabsWidget extends StatelessWidget {
  final bool isSelected; // Added parameter
  final HomeTopRatedTabsModel homeTopRatedTabs;
  CustomHomeTabsWidget({
    required this.homeTopRatedTabs,
    required this.isSelected, // Required in constructor
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      //width: 80.w,

      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? primaryColor : Colors.transparent,
        ),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 4, // Blur radius
            offset: Offset(0, 3), // Offset in x and y direction
          ),
        ],
        borderRadius: BorderRadius.circular(10.r),
        // border: Border.all(color: primaryColor),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            '${homeTopRatedTabs.title}',
            style: style14B.copyWith(fontSize: 12.sp, color: blackColor),
          ),
        ),
      ),
    );
  }
}
