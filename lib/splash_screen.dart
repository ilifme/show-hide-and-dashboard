import 'package:coba/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_screen.dart';
import 'package:get_storage/get_storage.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      final box = GetStorage();
      String? statusUsername = box.read('username');

      if (statusUsername == null) {
        Get.off(() => LoginScreen());
      }else{
        Get.off(()=> DashboardScreen());
      }
      Get.to(()=>LoginScreen());});
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Please Wait For A Moment"),
            CircularProgressIndicator(
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}
