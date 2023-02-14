import 'package:accountbook/models/ACalender/calender.dart';
import 'package:accountbook/models/AList/list.dart';
import 'package:accountbook/models/AMony/mony.dart';
import 'package:accountbook/models/controller/bottomContoller.dart';
import 'package:accountbook/models/global/appColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetView<BottomNavController> {
  Home({Key? key}) : super(key: key);
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // BottomNavController.to.appClose();
        return !await navigatorKey.currentState!.maybePop();
      },
      child: Obx(
        () => Scaffold(
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: const [
              Mony(),
              List(),
              Calender(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors().titleColor,
            currentIndex: controller.pageIndex.value,
            onTap: controller.changeBottonNav,
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.wallet, size: 20),
                  activeIcon: Icon(
                    Icons.wallet,
                    color: AppColors().titleColor,
                  ),
                  label: '자산'),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.list, size: 20),
                  activeIcon: Icon(
                    Icons.list,
                    color: AppColors().titleColor,
                  ),
                  label: '내역'),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.calendar_month, size: 20),
                  activeIcon: Icon(
                    Icons.calendar_month,
                    color: AppColors().titleColor,
                  ),
                  label: '달력'),
            ],
          ),
        ),
      ),
    );
  }
}
