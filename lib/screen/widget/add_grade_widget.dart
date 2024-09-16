import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart'as http;
import 'package:lab_3_1_1/screen/widget/report_widget.dart';

import '../../config/config.dart';
import '../../controller/home_controller.dart';
class AddGradeWidget extends StatefulWidget {

  @override
  State<AddGradeWidget> createState() => _AddGradeWidget();
}

class _AddGradeWidget extends State<AddGradeWidget> {
  TextEditingController sutdentId = TextEditingController();
  TextEditingController grade = TextEditingController();
  final homeController = Get.find<HomeController>();

  @override
  void dispose() {
    sutdentId.dispose();
    grade.dispose();
    super.dispose();
  }

  void student()async {
    final res = await http.post(
      Uri.parse('${Config.apiURL}/student/save'),
      body: {
        'studentId': sutdentId.text,
        'grade':  grade.text,
      },
    );
    print(res.body);
    homeController.callUpdateAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReportWidget(),
        TextField(controller: sutdentId,),
        TextField(controller: grade,),
        ElevatedButton(onPressed: student, child: Text('save-grade')),
      ],
    );
  }
}
