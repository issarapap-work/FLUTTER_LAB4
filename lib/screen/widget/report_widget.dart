import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class ReportWidget extends StatelessWidget {
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('StudentId:${homeController.studentCount}'),
        Text('Grade:${homeController.gradeCount}'),
      ],
    ));
  }
}
