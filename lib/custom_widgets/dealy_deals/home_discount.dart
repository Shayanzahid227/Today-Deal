import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/home_discount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeDiscountWidget extends StatelessWidget {
  final HomeDiscountModel homeDiscount;
  final VoidCallback? ontap;
  CustomHomeDiscountWidget({
    required this.homeDiscount,
    this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 178.h,
      width: 310.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: LinearGradient(
          begin: Alignment.topCenter, // Start from the top
          end: Alignment.bottomCenter, // End at the bottom
          colors: [lightRedColor, primaryColor],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${homeDiscount.discount}',
                  style: style25.copyWith(
                    color: whiteColor,
                    fontSize: 18,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(
                            4.0, 1.0), // Adjust offset for shadow position
                        blurRadius:
                            3.0, // Adjust blur radius for shadow softness
                        color: Colors.black, // Shadow color
                      ),
                    ],
                  ),
                ),
                Text(
                  '${homeDiscount.discountPercentage}',
                  style: style25B.copyWith(
                    fontSize: 42.sp,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(
                            4.0, 2.0), // Adjust offset for shadow position
                        blurRadius:
                            3.0, // Adjust blur radius for shadow softness
                        color: Colors.black, // Shadow color
                      ),
                    ],
                  ),
                ),
                Text(
                  '${homeDiscount.dishType}',
                  style: style14.copyWith(fontSize: 11),
                ),
                10.verticalSpace,
                GestureDetector(
                  onTap: ontap,
                  child: Container(
                    height: 18.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(60.r)),
                    child: Center(
                      child: Text(
                        '${homeDiscount.seeDetails}',
                        style: style10.copyWith(color: blackColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 178.h,
                // width: 160,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(14.r)
                    ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.r),
                  child: Image.asset(
                    AppAssets().pizza,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
