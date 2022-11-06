import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_app/app/data/controller/binding_controller.dart';
import 'package:task_app/app/data/services/storage/storage_service.dart';
import 'package:task_app/app/modules/splash/splash_screen.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialBinding: BindingController(),
      builder: EasyLoading.init(),
    );
  }
}
