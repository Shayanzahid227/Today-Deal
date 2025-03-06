import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/home_top_rated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeTopRatedWidget extends StatelessWidget {
  final HomeTopRatedModel HomeTopRated;
  const CustomHomeTopRatedWidget({
    required this.HomeTopRated,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: 175.w,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 4, // Blur radius
            offset: Offset(5, 5), // Offset in x and y direction
          ),
        ],
        //  border: Border.all(color: blackColor),
        borderRadius: BorderRadiusDirectional.circular(9.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Container(
              height: 133,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  '${HomeTopRated.imageUrl}',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          10.h.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${HomeTopRated.title}',
                  style: style14B.copyWith(fontSize: 10, color: blackColor),
                ),
                Container(
                  height: 16.h,
                  width: 16.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(
                      AppAssets().add,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              '${HomeTopRated.offer}',
              style: style10B.copyWith(fontSize: 8.sp, color: lightGreenColor),
            ),
          ),
          4.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              children: [
                Text(
                  '${HomeTopRated.location}',
                  style: style10B.copyWith(fontSize: 4.sp, color: blackColor),
                ),
                3.w.horizontalSpace,
                Text(
                  '${HomeTopRated.direction}',
                  style: style10B.copyWith(fontSize: 4.sp, color: primaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
