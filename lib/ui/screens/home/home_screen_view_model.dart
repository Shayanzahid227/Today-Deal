import 'package:code_structure/core/model/home_discount.dart';
import 'package:code_structure/core/others/base_view_model.dart';

class HomeScreenViewModel extends BaseViewModel {
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
    )
  ];
}
