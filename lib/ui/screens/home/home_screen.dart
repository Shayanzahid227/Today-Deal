import 'package:card_swiper/card_swiper.dart';
import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/home_discount.dart';
import 'package:code_structure/custom_widgets/dealy_deals/home_discount.dart';
import 'package:code_structure/ui/screens/home/home_screen_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenViewModel(),
      child: Consumer<HomeScreenViewModel>(
        builder: (context, model, child) => Scaffold(
          body: Column(
            children: [
              60.verticalSpace,
              SizedBox(
                height: 180.h,
                width: double.infinity,
                child: PageView.builder(
                  dragStartBehavior: DragStartBehavior.down,
                  controller: PageController(viewportFraction: 0.83),
                  itemCount: model.HomeDiscountList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomHomeDiscountWidget(
                          homeDiscount: model.HomeDiscountList[index]),
                    );
                  },
                ),
              ),
              // SizedBox(
              //   // Added SizedBox to constrain Swiper height
              //   height: 180.h,
              //   width: double.infinity,
              //   child: Swiper(
              //     viewportFraction: 1,
              //     scale: 0.9,
              //     scrollDirection: Axis.horizontal,
              //     itemCount:
              //         model.HomeDiscountList.length, // use length of the list
              //     itemBuilder: (context, index) {
              //       return CustomHomeDiscountWidget(
              //         homeDiscount: model.HomeDiscountList[index],
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
// Swiper(
//   itemBuilder: (BuildContext context, int index) {
//     return Image.network(
//       "https://via.placeholder.com/288x188",
//       fit: BoxFit.fill,
//     );
//   },
//   itemCount: 10,
//   viewportFraction: 0.8,
//   scale: 0.9,
// )
