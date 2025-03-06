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
          body: SingleChildScrollView(
            child: Column(
              children: [
                60.verticalSpace,
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.01,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: model.famousPageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: CustomFamousPageWidget(
                          HomeTopRated: model.famousPageList[index],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////
