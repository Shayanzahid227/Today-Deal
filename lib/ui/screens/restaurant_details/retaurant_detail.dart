import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/custom_widgets/dealy_deals/custom_header.dart';
import 'package:code_structure/ui/screens/restaurant_details/resturant_details_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class RestaurantDetailsPage extends StatelessWidget {
  const RestaurantDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RestaurantDetailsPageViewModel(),
      child: Consumer<RestaurantDetailsPageViewModel>(
        builder: (context, value, child) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: primaryColor,
            leading: Icon(
              Icons.arrow_back_rounded,
              size: 30,
              color: whiteColor,
            ),
            title: Text(
              'Details Restaurant',
              style: style25B.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sardar Ji Cottrolle Blvd',
                  style: style25B.copyWith(fontSize: 20.sp, color: blackColor),
                ),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(),
                      child: Image.asset(
                        AppAssets().location2,
                      ),
                    ),
                    2.horizontalSpace,
                    Text(
                      "1975 cottrele blvd Brampton ON L6p228",
                      style: style14.copyWith(fontSize: 12, color: greyColor2),
                    ),
                    2.horizontalSpace,
                    Text(
                      '- Get Direction',
                      style: style14.copyWith(color: greyColor2, fontSize: 12),
                    )
                  ],
                ),
                20.verticalSpace,
                Container(
                  height: 260.h,
                  decoration:
                      BoxDecoration(border: Border.all(color: blackColor)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
