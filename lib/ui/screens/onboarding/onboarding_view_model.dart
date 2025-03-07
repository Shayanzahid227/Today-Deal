import 'package:code_structure/core/others/base_view_model.dart';
import 'package:flutter/material.dart';

class OnboardingViewModel extends BaseViewModel {
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
      "title": "Stay Connected",
      "description": "Keep in touch with your loved ones anytime, anywhere."
    },
    {
      "image": "assets/static_assets/page3.png",
      "title": "Enjoy the Journey",
      "description": "Get started now and explore amazing features."
    },
  ];

  void nextPage() {
    if (_currentIndex < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      // Navigate to home screen or login
    }
  }
}
