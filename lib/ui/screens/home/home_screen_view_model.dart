import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/model/home_categories.dart';
import 'package:code_structure/core/model/home_discount.dart';
import 'package:code_structure/core/others/base_view_model.dart';

class HomeScreenViewModel extends BaseViewModel {
  ///
  ///     fore discount section
  ///
  List<HomeDiscountModel> HomeDiscountList = [
    HomeDiscountModel(
      discount: 'Discount',
      discountPercentage: '25%',
      dishType: "Non_Veg Platter",
      seeDetails: "see details",
    ),
    HomeDiscountModel(
      discount: 'Discount',
      discountPercentage: '25%',
      dishType: "Non_Veg Platter",
      seeDetails: "see details",
    ),
    HomeDiscountModel(
      discount: 'Discount',
      discountPercentage: '25%',
      dishType: "Non_Veg Platter",
      seeDetails: "see details",
    ),
    HomeDiscountModel(
      discount: 'Discount',
      discountPercentage: '25%',
      dishType: "Non_Veg Platter",
      seeDetails: "see details",
    ),
    HomeDiscountModel(
      discount: 'Discount',
      discountPercentage: '25%',
      dishType: "Non_Veg Platter",
      seeDetails: "see details",
    ),
    HomeDiscountModel(
      discount: 'Discount',
      discountPercentage: '25%',
      dishType: "Non_Veg Platter",
      seeDetails: "see details",
    )
  ];

  ///
  ///    for categories section
  ///
  List<HomeCategoriesModel> categoriesList = [
    HomeCategoriesModel(imageUrl: AppAssets().beauty, title: 'Beauty'),
    HomeCategoriesModel(imageUrl: AppAssets().restaurant, title: 'Restaurant'),
    HomeCategoriesModel(imageUrl: AppAssets().pizzaHouse, title: 'Pizza House'),
    HomeCategoriesModel(imageUrl: AppAssets().jewelry, title: 'jewelry'),
  ];
}
