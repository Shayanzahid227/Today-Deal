import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/model/home_categories.dart';
import 'package:code_structure/core/model/home_discount.dart';
import 'package:code_structure/core/model/home_top_rated.dart';
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

  ///
  ///           Top Rated section
  ///
  List<HomeTopRatedModel> topRatedList = [
    HomeTopRatedModel(
        imageUrl: AppAssets().beauty,
        title: 'Grace parlour & Boutique',
        offer: '25% off offer available for 24/7',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '-Direction'),
    HomeTopRatedModel(
        imageUrl: AppAssets().beauty,
        title: 'Hans Hair stylist',
        offer: '25% off offer available for 24/7',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '-Direction'),
    HomeTopRatedModel(
        imageUrl: AppAssets().beauty,
        title: 'Grace parlour & Boutique',
        offer: '25% off offer available for 24/7',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '-Direction'),
    HomeTopRatedModel(
        imageUrl: AppAssets().beauty,
        title: 'Hans Hair stylist',
        offer: '25% off offer available for 24/7',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '-Direction')
  ];
  // tabs
  List<HomeTopRatedTabsModel> topRatedTabsList = [
    HomeTopRatedTabsModel(title: 'Beauty'),
    HomeTopRatedTabsModel(title: 'Restaurant'),
    HomeTopRatedTabsModel(title: 'Pizza House'),
    HomeTopRatedTabsModel(title: 'Jewelry')
  ];

  ///
  ///   near by store section
  ///
  List<HomeTopRatedModel> nearByStoreList = [
    HomeTopRatedModel(
        imageUrl: AppAssets().jewelry,
        title: 'Karolbagh Jewellers',
        offer: 'full purity with whole mark',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '- Direction'),
    HomeTopRatedModel(
        imageUrl: AppAssets().jewelry,
        title: 'Karolbagh Jewellers',
        offer: 'full purity with whole mark',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '- Direction'),
    HomeTopRatedModel(
        imageUrl: AppAssets().jewelry,
        title: 'Karolbagh Jewellers',
        offer: 'full purity with whole mark',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '- Direction'),
    HomeTopRatedModel(
        imageUrl: AppAssets().jewelry,
        title: 'Karolbagh Jewellers',
        offer: 'full purity with whole mark',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '- Direction'),
  ];

  ///
  ///     famous store
  ///

  ///
  ///   near by store section
  ///
  List<HomeTopRatedModel> famousStoreList = [
    HomeTopRatedModel(
        imageUrl: AppAssets().restaurant,
        title: 'Ricks Kitchen & Meat Shope',
        offer: '5% off',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '- Direction'),
    HomeTopRatedModel(
        imageUrl: AppAssets().restaurant,
        title: 'Ricks Kitchen & Meat Shope',
        offer: '5% off',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '- Direction'),
    HomeTopRatedModel(
        imageUrl: AppAssets().restaurant,
        title: 'Ricks Kitchen & Meat Shope',
        offer: '5% off',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '- Direction'),
    HomeTopRatedModel(
        imageUrl: AppAssets().restaurant,
        title: 'Ricks Kitchen & Meat Shope',
        offer: '5% off',
        location: 'Near Jain Book shop (mahavir road) Ahmedgarh War',
        direction: '- Direction'),
  ];
}
