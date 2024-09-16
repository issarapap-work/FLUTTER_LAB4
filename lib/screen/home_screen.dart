
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_3_1_1/controller/home_controller.dart';
import 'package:lab_3_1_1/screen/widget/add_grade_widget.dart';
import 'package:lab_3_1_1/screen/widget/add_student_widget.dart';

class HomeScreen extends GetView<HomeController>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          AddGradeWidget(),
        ],
      ),
    );
  }
}