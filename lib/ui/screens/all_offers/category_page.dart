import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/custom_widgets/dealy_deals/categories_page.dart';
import 'package:code_structure/ui/screens/all_offers/category_page_view_model.dart';
import 'package:code_structure/ui/screens/famouse_store/famous_store_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryPageViewModel(),
      child: Consumer<CategoryPageViewModel>(
        builder: (context, model, child) => Scaffold(
          body: Column(
            children: [
              _header(),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: model.categoryList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(FamousStorePage());
                        },
                        child: CustomCategoriesPageWidget(
                          homeDiscount: model.categoryList[0],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

_header() {
  return Container(
      height: 120,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(400, 100),
          bottomRight: Radius.elliptical(400, 100),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            AppAssets().applogo,
            scale: 16,
          ),
          10.horizontalSpace,
          Expanded(
            child: TextFormField(
              decoration: authFieldDecoration.copyWith(
                hintText: 'Search fot Restaurant,Jewelry ....',
                contentPadding: EdgeInsets.all(0),
                hintStyle:
                    style14N.copyWith(color: greyColor2, fontSize: 12.sp),
                fillColor: whiteColor,
                prefixIcon: Image.asset(
                  AppAssets().searchIcon,
                  color: hintTextColor,
                  scale: 3,
                ),
              ),
            ),
          ),
          notification(),
        ],
      ));
}

Widget notification() {
  return Container(
    height: 45.h,
    width: 45.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: transparentColor),
    ),
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Image.asset(
        AppAssets().notificationIcon,
        fit: BoxFit.contain,
      ),
    ),
  );
}
