import 'dart:ui';

class HomeDiscountModel {
  final String? discount;
  final String? discountPercentage;
  final String? dishType;
  final String? seeDetails;
  //final VoidCallback? onTap; // Callback function added

  HomeDiscountModel({
    required this.discount,
    required this.discountPercentage,
    required this.dishType,
    required this.seeDetails,
    // required this.onTap
  });
}
