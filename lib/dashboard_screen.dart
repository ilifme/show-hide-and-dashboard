import 'package:coba/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  bool temaDark = true;
  int _bottomNavIndex = 0;

  void gantiTema() {
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
      ),
      body: Avatar(),
      bottomNavigationBar: CustomBottomNavbar(
        temaDark: temaDark,
        currentIndex: _bottomNavIndex,
        onTabChange: (index) {
          setState(() => _bottomNavIndex = index);
        },
        onThemeChange: gantiTema,
      ),
    );
  }

  Row Usernameatas() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Alif',
          style: TextStyle(
              color: temaDark ? Colors.white : Colors.black87,
              fontWeight: FontWeight.bold),
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
        SizedBox(height: 30),
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
        SizedBox(height: 15),
        Text(
          '@ Alif',
          style: TextStyle(
            color: temaDark ? Colors.white : Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('6,99K Followers',
                style: TextStyle(
                    color: temaDark ? Colors.white : Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            SizedBox(width: 15),
            Text('6,9M Likes',
                style: TextStyle(
                    color: temaDark ? Colors.white : Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            SizedBox(width: 15),
            Text('69 Following',
                style: TextStyle(
                    color: temaDark ? Colors.white : Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: temaDark ? Colors.white : Colors.black87),
              ),
              child: Text(
                'Edit Profile',
                style: TextStyle(color: temaDark ? Colors.white : Colors.black87),
              ),
            ),
            SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: temaDark ? Colors.white : Colors.black87),
              ),
              child: Text(
                'Share Profile',
                style: TextStyle(color: temaDark ? Colors.white : Colors.black87),
              ),
            ),
            SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: temaDark ? Colors.white : Colors.black87),
              ),
              child: Icon(Icons.person_add_alt_sharp,
                  color: temaDark ? Colors.white : Colors.black87),
            ),
          ],
        ),
        SizedBox(height: 10),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: temaDark ? Colors.white : Colors.black87),
          ),
          child: Text(
            '+ Add bio',
            style: TextStyle(color: temaDark ? Colors.white : Colors.black87),
          ),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.grid_on, color: temaDark ? Colors.white : Colors.black87),
            Icon(Icons.lock, color: temaDark ? Colors.white : Colors.black87),
            Icon(Icons.cached, color: temaDark ? Colors.white : Colors.black87),
            Icon(Icons.bookmark_add, color: temaDark ? Colors.white : Colors.black87),
            Icon(Icons.favorite_rounded, color: temaDark ? Colors.white : Colors.black87),
          ],
        ),
      ],
    );
  }
}