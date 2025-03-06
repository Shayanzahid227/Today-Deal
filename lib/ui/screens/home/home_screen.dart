import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/home_top_rated.dart';
import 'package:code_structure/custom_widgets/dealy_deals/home_categories.dart';
import 'package:code_structure/custom_widgets/dealy_deals/home_discount.dart';
import 'package:code_structure/custom_widgets/dealy_deals/home_famous_store.dart';
import 'package:code_structure/custom_widgets/dealy_deals/home_near_by_store.dart';
import 'package:code_structure/custom_widgets/dealy_deals/home_screen_tabs.dart';
import 'package:code_structure/custom_widgets/dealy_deals/home_top_rated.dart';
import 'package:code_structure/ui/screens/all_offers/category_page.dart';
import 'package:code_structure/ui/screens/home/home_screen_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

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
          //backgroundColor: whiteColor,
          backgroundColor: Colors.purple.shade200,
          body: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  60.verticalSpace,
                  //     search field
                  _searchField(),
                  //     location
                  _location(),
                  30.h.verticalSpace,
                  //     first discount card
                  _discount(model),
                  30.h.verticalSpace,
                  //     discount indicator
                  _discountIndicator(model),
                  30.h.verticalSpace,
                  //     Categories
                  _Categories(model),
                  30.h.verticalSpace,
                  //     top rated
                  _topRated(model),
                  30.verticalSpace,
                  //     Near by store
                  _nearbyStores(model),
                  30.verticalSpace,
                  //     Famous Store
                  _famousStore(model),
                  100.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///
  ///  location
  ///
  ListTile _location() {
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
        padEnds: false,
        dragStartBehavior: DragStartBehavior.start,
        controller: _pageController,
        itemCount: model.HomeDiscountList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : 8.0,
            ),
            child: GestureDetector(
              onTap: () {
                Get.to(CategoryPage());
              },
              child: CustomHomeDiscountWidget(
                homeDiscount: model.HomeDiscountList[index],
              ),
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
  Padding _searchField() {
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
                boxShadow: [],
                borderRadius: BorderRadius.circular(1),
                border: Border.all(color: transparentColor),
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
  Column _Categories(HomeScreenViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: style25B.copyWith(color: blackColor, fontSize: 18.sp),
        ),
        20.verticalSpace,
        SizedBox(
          height: 150.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: model.categoriesList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 10),
                child: AspectRatio(
                  aspectRatio: 0.7,
                  child: CustomHomeCategoriesWidget(
                      homeCategories: model.categoriesList[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  ///
  ///   rop rated for you
  ///
  Column _topRated(HomeScreenViewModel model) {
    int selectedTabIndex = 0; // Track the selected tab
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top rated for you',
                style: style25B.copyWith(fontSize: 18.sp, color: blackColor),
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 4, // Blur radius
                        offset: Offset(0, 3), // Offset in x and y direction
                      ),
                    ],
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                    border: Border.all(color: blackColor, width: 0.5)),
                height: 25.h,
                width: 60.w,
                child: Center(
                  child: Text(
                    'show all',
                    style: style10.copyWith(color: primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
        30.verticalSpace,

        ///
        ///            use custom button here as looking like tabbar
        ///

        SizedBox(
          height: 30.h,
          child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    onTap:
                    () {
                      setState(() {
                        selectedTabIndex = index; // Update selected tab
                      });
                    };
                  },
                  child: CustomHomeTabsWidget(
                    homeTopRatedTabs: model.topRatedTabsList[index],
                    isSelected: selectedTabIndex == index, // Pass isSelected
                  ),
                ),
              );
            },
          ),
        ),
        20.verticalSpace,
        SizedBox(
          height: 190.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: model.topRatedList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 10),
                child: CustomHomeTopRatedWidget(
                  HomeTopRated: model.topRatedList[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  ///
  ///  nearby stores
  ///
  Column _nearbyStores(HomeScreenViewModel model) {
    int selectedTabIndex = 3; // Track the selected tab
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Near By Store',
                style: style25B.copyWith(fontSize: 18.sp, color: blackColor),
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 4, // Blur radius
                        offset: Offset(0, 3), // Offset in x and y direction
                      ),
                    ],
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                    border: Border.all(color: blackColor, width: 0.5)),
                height: 25.h,
                width: 60.w,
                child: Center(
                  child: Text(
                    'show all',
                    style: style10.copyWith(color: primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
        30.verticalSpace,

        ///
        ///            use custom button here as looking like tabbar
        ///

        SizedBox(
          height: 30.h,
          child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    onTap:
                    () {
                      setState(() {
                        selectedTabIndex = index; // Update selected tab
                      });
                    };
                  },
                  child: CustomHomeTabsWidget(
                    homeTopRatedTabs: model.topRatedTabsList[index],
                    isSelected: selectedTabIndex == index, // Pass isSelected
                  ),
                ),
              );
            },
          ),
        ),
        20.verticalSpace,
        SizedBox(
          height: 190.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: model.nearByStoreList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 10),
                child: CustomHomeNearByStoreWidget(
                  HomeTopRated: model.nearByStoreList[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  ///
  ///   Famous store
  ///
  Column _famousStore(HomeScreenViewModel model) {
    int selectedTabIndex = 1; // Track the selected tab
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Famous Store',
                style: style25B.copyWith(fontSize: 18.sp, color: blackColor),
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 4, // Blur radius
                        offset: Offset(0, 3), // Offset in x and y direction
                      ),
                    ],
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                    border: Border.all(color: blackColor, width: 0.5)),
                height: 25.h,
                width: 60.w,
                child: Center(
                  child: Text(
                    'show all',
                    style: style10.copyWith(color: primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
        30.verticalSpace,

        ///
        ///            use custom button here as looking like tabbar
        ///

        SizedBox(
          height: 30.h,
          child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    onTap:
                    () {
                      setState(() {
                        selectedTabIndex = index; // Update selected tab
                      });
                    };
                  },
                  child: CustomHomeTabsWidget(
                    homeTopRatedTabs: model.topRatedTabsList[index],
                    isSelected: selectedTabIndex == index, // Pass isSelected
                  ),
                ),
              );
            },
          ),
        ),
        20.verticalSpace,
        SizedBox(
          height: 190.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: model.famousStoreList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 10),
                child: CustomHomeFamousStoreWidget(
                  HomeTopRated: model.famousStoreList[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
