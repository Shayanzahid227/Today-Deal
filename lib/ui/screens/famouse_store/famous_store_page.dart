import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/custom_widgets/dealy_deals/famous_page.dart';
import 'package:code_structure/ui/screens/famouse_store/famous_store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FamousStorePage extends StatelessWidget {
  const FamousStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FamousStorePageViewModel(),
      child: Consumer<FamousStorePageViewModel>(
        builder: (context, model, child) => Scaffold(
          body: Column(
            children: [
              _header(),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: model.famousPageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomFamousPageWidget(
                      HomeTopRated: model.famousPageList[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////

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
