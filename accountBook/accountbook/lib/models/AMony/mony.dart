import 'package:accountbook/models/global/appColor.dart';
import 'package:accountbook/models/global/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mony extends StatelessWidget {
  const Mony({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('자산', style: AppTextStyle().blackBold18),
        actions: [
          GestureDetector(
            onTap: () {
              print('자산');
            },
            child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.more_vert,
                  color: AppColors().blackColor,
                )),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
