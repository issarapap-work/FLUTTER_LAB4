import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lab_3_1_1/controller/home_controller.dart';
import 'package:lab_3_1_1/screen/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
      initialBinding: BindingsBuilder((){
        Get.put(HomeController());
      }),
    );
  }
}
