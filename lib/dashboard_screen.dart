import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  bool temaDark = true;

  gantiTema() {
    setState(() {
      temaDark = !temaDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: temaDark ? Colors.blueGrey : Colors.yellow.shade100,
      appBar: AppBar(
        backgroundColor: temaDark ? Colors.blueGrey : Colors.yellow.shade100,
        centerTitle: true,
        title: Usernameatas(),
        actions: [Tomboltema()],
      ),
      body: Avatar(),
    );
  }

  Row Usernameatas() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Alif',
          style: TextStyle(color: temaDark ? Colors.white : Colors.black87, fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.arrow_drop_down_sharp,
          color: temaDark ? Colors.white : Colors.black87,
        ),
      ],
    );
  }

  Column Avatar() {
    return Column(
      children: [
        Center(),
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: temaDark ? Colors.white30 : Colors.black87,
            ),
            Icon(
              Icons.person,
              size: 60,
              color: temaDark ? Colors.white : Colors.white70,
            ),
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
        SizedBox(height: 15,),

        Column(
          children: [
            Text('@ Alif',
              style: TextStyle(
                color: temaDark ? Colors.white : Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('6,99K Followers', style: TextStyle(color: temaDark ? Colors.white : Colors.black87, fontSize: 15,
              fontWeight: FontWeight.bold,)
            ),
            SizedBox(width: 15,),
            Text('6,9M Likes', style: TextStyle(color: temaDark ? Colors.white : Colors.black87, fontSize: 15,
              fontWeight: FontWeight.bold,)
            ),
            SizedBox(width: 15,),
            Text('69 Following', style: TextStyle(color: temaDark ? Colors.white : Colors.black87, fontSize: 15,
            fontWeight: FontWeight.bold,)
            ),
          ],
        ),
      ],
    );
  }

  ElevatedButton Tomboltema() {
    return ElevatedButton(
      onPressed: gantiTema,
      style: ElevatedButton.styleFrom(
        backgroundColor: temaDark ? Colors.black : Colors.orange,
        foregroundColor: Colors.white,
      ),
      child: Icon(temaDark ? Icons.dark_mode : Icons.light_mode),
    );
  }
}
