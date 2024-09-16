import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:lab_3_1_1/config/config.dart';
import 'package:http/http.dart'as http;
class HomeController extends GetxController{
  RxInt studentCount = 0.obs;
  RxInt gradeCount = 0.obs;

  @override
  void onClose() {
    callUpdateAPI();
    super.onClose();
  }
  void callUpdateAPI() async{
    http.post(Uri.parse('${Config.apiURL}/student/reprot-grad')).then((res) {
      Map resMap = jsonDecode(res.body);
      studentCount(resMap['studentCount']);
      gradeCount(resMap['gradeCount']);
    });
  }
}