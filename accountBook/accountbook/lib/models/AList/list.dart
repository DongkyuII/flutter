import 'package:accountbook/models/global/appColor.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors().red,
    );
  }
}
