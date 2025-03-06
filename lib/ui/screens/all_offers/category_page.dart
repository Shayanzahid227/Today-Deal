import 'package:code_structure/custom_widgets/dealy_deals/categories_page.dart';
import 'package:code_structure/ui/screens/all_offers/category_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryPageViewModel(),
      child: Consumer<CategoryPageViewModel>(
        builder: (context, model, child) => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  60.verticalSpace,
                  CustomCategoriesPageWidget(
                    homeDiscount: model.categoryList[0],
                  ),
                  20.verticalSpace,
                  CustomCategoriesPageWidget(
                    homeDiscount: model.categoryList[1],
                  ),
                  20.verticalSpace,
                  CustomCategoriesPageWidget(
                    homeDiscount: model.categoryList[2],
                  ),
                  20.verticalSpace,

                  ///
                  ///using same custom widget last one is giving right over flow
                  ///change 1 to 3 in bracket you will now and it is bcoz of text length
                  ///
                  CustomCategoriesPageWidget(
                    homeDiscount: model.categoryList[3],
                  ),
                  200.verticalSpace
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
