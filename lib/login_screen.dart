import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'text_field_user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Login', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 25),

            // Avatar
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(radius: 50, backgroundColor: Colors.white30),
                Icon(Icons.person, size: 60, color: Colors.white70),
                Positioned(
                  right: 5,
                  bottom: 7,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 25),

            // Username
            Textfielduser(
              labelText: "Username",
              controller: usernameController,
              isPassword: false,
            ),

            SizedBox(height: 15),

            // Password
            Textfielduser(
              labelText: "Password",
              controller: passwordController,
              isPassword: true,
            ),

            SizedBox(height: 25),

            // Login Button
            OutlinedButton(
              onPressed: () {
                final box =GetStorage();
                box.write('username', usernameController);
                Get.to(() => DashboardScreen());
                Get.snackbar(
                  "Login",
                  "Berhasil Login",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                );
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
