import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'text_field_user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
          children: [
          Center(),

      SizedBox(height: 15,),

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
      SizedBox(height: 15),

            Textfielduser(
              labelText: 'Username',
            ),

            SizedBox(height: 10),

            Textfielduser(
              labelText: 'Password',
              isPassword: true,
            ),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white),
                  ),
                  child: Text(
                    'Konfirmasi',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
              ],

            ),
      ],
      ),
    );
  }


}
