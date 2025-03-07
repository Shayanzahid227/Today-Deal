import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/home_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeCategoriesWidget extends StatelessWidget {
  final HomeCategoriesModel homeCategories;
  CustomHomeCategoriesWidget({
    required this.homeCategories,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 120.w,
      decoration: BoxDecoration(
        //  border: Border.all(color: blackColor),
        borderRadius: BorderRadiusDirectional.circular(9.r),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  '${homeCategories.imageUrl}',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          20.h.verticalSpace,
          Text(
            '${homeCategories.title}',
            style: style14B.copyWith(fontSize: 12, color: blackColor),
          )
        ],
      ),
    );
  }
}
