import 'dart:ui';

///
///   this model will be use in  home screen as well ass in category screen als
///
///
class HomeDiscountModel {
  final String? imageUrl;
  final String? title;
  final String? subTitle;
  final String? discountValue;
  final String? dishType;
  final String? seeDetails;
  final VoidCallback? onTap; // Callback function added

  HomeDiscountModel(
      {required this.imageUrl,
      this.title,
      required this.subTitle,
      required this.discountValue,
      this.dishType,
      required this.seeDetails,
      this.onTap});
}
