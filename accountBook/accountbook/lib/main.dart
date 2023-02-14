import 'package:accountbook/home.dart';
import 'package:accountbook/models/controller/bottomContoller.dart';
import 'package:accountbook/models/global/appColor.dart';
import 'package:accountbook/models/global/init.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavController(), permanent: true);
    return FutureBuilder(
      future: Init.appInit(context),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting ||
            Init.getConnectivity() == false) {
          print('object');
          return const MaterialApp(home: Splash());
        } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'My App',
            theme: ThemeData(
                primaryColor: AppColors().titleColor,
                canvasColor: AppColors().whiteColor,
                appBarTheme: AppBarTheme(
                    backgroundColor: AppColors().whiteColor,
                    titleTextStyle: TextStyle(color: AppColors().whiteColor),
                    elevation: 0.0,
                    centerTitle: true),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory),
            // home: App(),
            initialRoute: '/',
            getPages: [
              GetPage(name: '/', page: () => Home()),
            ],
          );
        }
      },
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: AppColors().blue,
    ));
  }
}
