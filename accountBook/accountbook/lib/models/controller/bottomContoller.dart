import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum PageName { mony, list, calender }

class BottomNavController extends GetxController {
  static BottomNavController get to => Get.find();
  RxInt pageIndex = 0.obs;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  RxBool isCategoryPageOpen = false.obs;

  void changeBottonNav(int index) {
    var page = PageName.values[index];
    switch (page) {
      case PageName.mony:
        pageMove(index);
        break;
      case PageName.list:
        pageMove(index);
        break;
      case PageName.calender:
        pageMove(index);
        break;
    }
  }

  void pageMove(int index) {
    pageIndex(index);
  }

  Future<bool> onWillPop() async {
    setCategoryPage(false);
    return !await navigatorKey.currentState!.maybePop();
  }

  Future<bool> appClose() async {
    if (pageIndex == 0.obs) {
      exit(0);
    } else {
      pageMove(0);
    }
    return true;
  }

  void setCategoryPage(bool ck) {
    isCategoryPageOpen(ck);
  }

  void back() {
    onWillPop();
  }
}
