import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart'as http;
import 'package:lab_3_1_1/screen/widget/report_widget.dart';

import '../../config/config.dart';
import '../../controller/home_controller.dart';
class AddStudentWidget extends StatefulWidget {

  @override
  State<AddStudentWidget> createState() => _AddStudentWidget();
}

class _AddStudentWidget extends State<AddStudentWidget> {
  TextEditingController sutdentId = TextEditingController();
  TextEditingController name = TextEditingController();
  final homeController = Get.find<HomeController>();

  @override
  void dispose() {
    sutdentId.dispose();
    name.dispose();
    super.dispose();
  }

  void student()async {
    final res = await http.post(
      Uri.parse('${Config.apiURL}/student/save'),
      body: {
        'studentId': sutdentId.text,
        'name':  name.text,
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
        TextField(controller: name,),
        ElevatedButton(onPressed: student, child: Text('save')),
      ],
    );
  }
}
