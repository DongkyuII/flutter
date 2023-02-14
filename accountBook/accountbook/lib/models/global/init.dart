import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:connectivity/connectivity.dart';

bool connectivity = false;

class Init {
  static bool getConnectivity() {
    return connectivity;
  }

  static appInit(BuildContext context) async {
    await appConnectivity();
  }

  static Future appConnectivity() async {
    var result = await (Connectivity().checkConnectivity());
    if (result == ConnectivityResult.none) {
      connectivity = false;
    } else {
      connectivity = true;
    }
  }
}
