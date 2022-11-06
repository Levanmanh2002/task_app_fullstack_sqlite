import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/core/utils/extensions.dart';
import 'package:task_app/app/core/values/colors.dart';
import 'package:task_app/app/modules/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.to(() => const HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage("assets/images/playstore.png"),
              fit: BoxFit.cover,
              width: 80.0.wp,
            ),
            SizedBox(
              height: 5.0.hp,
            ),
            const Text('from'),
            SizedBox(
              height: 1.0.hp,
            ),
            Text(
              'Anh Báo',
              style: TextStyle(
                fontSize: 5.0.wp,
                fontFamily: 'Lobster',
                color: anhbao,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
