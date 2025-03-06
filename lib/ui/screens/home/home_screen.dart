import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/custom_widgets/dealy_deals/home_categories.dart';
import 'package:code_structure/custom_widgets/dealy_deals/home_discount.dart';
import 'package:code_structure/ui/screens/home/home_screen_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenViewModel(),
      child: Consumer<HomeScreenViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.teal,
          body: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                60.verticalSpace,
                _searchField(),
                _location(),
                20.verticalSpace,
                _discount(model),
                20.verticalSpace,
                _discountIndicator(model),
                30.verticalSpace,
                Text(
                  'Categories',
                  style: style25B.copyWith(color: blackColor, fontSize: 18.sp),
                ),
                20.verticalSpace,
                _Categories(
                  model,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///
  ///  location
  ///
  _location() {
    return ListTile(
      leading: Container(
        height: 14.h,
        width: 14.w,
        decoration: BoxDecoration(),
        child: Image.asset(
          AppAssets().locationIcon,
          fit: BoxFit.cover,
        ),
      ),
      title: Row(
        children: [
          Text(
            'sent to',
            style: style14.copyWith(
              fontSize: 12,
            ),
          ),
          10.w.horizontalSpace,
          Text(
            'sir g location paki set ka ...',
            style: style14B.copyWith(
              fontSize: 12,
            ),
          ),
          10.horizontalSpace,
          Container(
            height: 14.h,
            width: 20.w,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Image.asset(
                AppAssets().downArrowIcon,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      // trailing: Container(
      //   height: 20.h,
      //   width: 20.w,
      //   decoration: BoxDecoration(),
      //   child: Image.asset(
      //     AppAssets().downArrowIcon,
      //     fit: BoxFit.cover,
      //   ),
      // ),
    );
  }

  ///
  /// first discount card
  ///
  SizedBox _discount(HomeScreenViewModel model) {
    return SizedBox(
      height: 180.h,
      // width: double.infinity,
      child: PageView.builder(
        dragStartBehavior: DragStartBehavior.start,
        controller: _pageController,
        itemCount: model.HomeDiscountList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : 8.0,
            ),
            child: CustomHomeDiscountWidget(
              homeDiscount: model.HomeDiscountList[index],
            ),
          );
        },
      ),
    );
  }

  ///
  /// discount indicator
  ///
  Row _discountIndicator(HomeScreenViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        model.HomeDiscountList.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 2.0),
          height: 8,
          width: _currentPage == index ? 29 : 8,
          decoration: BoxDecoration(
            color: _currentPage == index ? primaryColor : Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  ///
  ///      search field
  ///
  _searchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.transparent,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45.h,
                child: TextFormField(
                  decoration: authFieldDecoration.copyWith(
                    hintText: 'Search fot Restaurant,Jewelry ...  ',
                    hintStyle:
                        style14N.copyWith(color: greyColor2, fontSize: 12.sp),
                    fillColor: whiteColor,
                    prefixIcon: Image.asset(
                      AppAssets().searchIcon,
                      scale: 3,
                    ),
                  ),
                ),
              ),
            ),
            10.horizontalSpace,
            Container(
              height: 45.h,
              width: 45.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                border: Border.all(color: transparentColor),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  AppAssets().emailIcon,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Notification Icon
            Container(
              height: 45.h,
              width: 45.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: transparentColor),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  AppAssets().notificationIcon,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
  ///   categories
  ///
  _Categories(HomeScreenViewModel model) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: model.categoriesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(left: 6),
            child: CustomHomeCategoriesWidget(
                homeCategories: model.categoriesList[index]),
          );
        },
      ),
    );
  }
}
