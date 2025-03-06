import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/model/home_discount.dart';
import 'package:code_structure/core/others/base_view_model.dart';
import 'package:code_structure/ui/screens/famouse_store/famous_store_page.dart';
import 'package:code_structure/ui/screens/home/home_screen.dart';
import 'package:get/route_manager.dart';

class CategoryPageViewModel extends BaseViewModel {
  List<HomeDiscountModel> categoryList = [
    HomeDiscountModel(
        imageUrl: AppAssets().pizza,
        title: 'All The Restaurant',
        subTitle: 'Discount',
        discountValue: 'Offer',
        seeDetails: 'see Details',
        onTap: () {
          print("navigate to home screen successfully");
          Get.to(FamousStorePage());
        }),
    HomeDiscountModel(
        imageUrl: AppAssets().beauty2,
        title: 'All The Salon',
        subTitle: 'Discount',
        discountValue: 'Offer',
        seeDetails: 'see Details',
        onTap: () {
          print("navigate to home screen successfully");
          Get.to(HomeScreen());
        }),
    HomeDiscountModel(
        imageUrl: AppAssets().pizzaHouse2,
        title: 'All The Pizza House',
        subTitle: 'Discount',
        discountValue: 'Offer',
        seeDetails: 'see Details',
        onTap: () {
          print("navigate to home screen successfully");
          Get.to(HomeScreen());
        }),
    HomeDiscountModel(
        imageUrl: AppAssets().jewellery2,
        title: 'Jewellery Stores',
        subTitle: 'Discount',
        discountValue: 'Offer',
        seeDetails: 'see Details',
        onTap: () {
          print("navigate to home screen successfully");
          Get.to(
            HomeScreen(),
          );
        })
  ];
}
