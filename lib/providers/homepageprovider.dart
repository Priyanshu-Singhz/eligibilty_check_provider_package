import 'package:flutter/material.dart';

class Homepageprovider with ChangeNotifier {
  bool? isEligible;
  String? eligibility = "";

  void checkeligibility(int age) {
    if (age < 18) {
      isEligible = true;
      eligibility = "You are not eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligibility = "You are eligible";
      notifyListeners();
    }
  }
}
