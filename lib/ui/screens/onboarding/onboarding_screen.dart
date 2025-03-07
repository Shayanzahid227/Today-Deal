import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/ui/screens/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      "image": "assets/static_assets/page1.png",
      "title": "Find your restaurant",
      "description":
          "Thousands of restaurant around you are waiting to rock your event."
    },
    {
      "image": "assets/static_assets/page2.png",
      "title": "Find your Salon",
      "description": "Thousands of salons around you are waiting."
    },
    {
      "image": "assets/static_assets/page3.png",
      "title": "Find your Pizza House",
      "description": "Thousands of pizza houses around you are waiting."
    },
    {
      "image": "assets/static_assets/page4.png",
      "title": "Find your Salon",
      "description": "Thousands of salons around you are waiting."
    },
    {
      "image": "assets/static_assets/page5.png",
      "title": "Find your Insurances",
      "description": "Thousands of insurance providers are waiting."
    },
  ];

  void _nextPage() {
    if (_currentIndex < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      Get.offAll(LoginScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              Get.offAll(LoginScreen());
            },
            child: Text(
              "Skip",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Image.asset(
                        _onboardingData[index]["image"]!,
                        height: 300.h,
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _onboardingData[index]["title"]!,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              _onboardingData[index]["description"]!,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: _nextPage,
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      _currentIndex == _onboardingData.length - 1
                          ? "Get Started"
                          : "Next",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  children: List.generate(_onboardingData.length, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: _currentIndex == index ? 30 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: _currentIndex == index ? blackColor : greyColor,
                      ),
                    );
                  }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
