import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../login_screen.dart';

class CustomBottomNavbar extends StatelessWidget {
  final bool temaDark;
  final int currentIndex;
  final Function(int) onTabChange;
  final Function() onThemeChange;

  const CustomBottomNavbar({
    super.key,
    required this.temaDark,
    required this.currentIndex,
    required this.onTabChange,
    required this.onThemeChange,
  });

  void _logout() {
    final box = GetStorage();
    box.remove('username');
    Get.offAll(() => LoginScreen());
    Get.snackbar(
      "Logout",
      "Berhasil Logout",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == 2) {
          onThemeChange();
        } else if (index == 3) {
          _logout();
        } else {
          onTabChange(index);
        }
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: temaDark ? Colors.blueGrey[800] : Colors.yellow[200],
      selectedItemColor: temaDark ? Colors.white : Colors.black,
      unselectedItemColor: temaDark ? Colors.white54 : Colors.black54,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(temaDark ? Icons.dark_mode : Icons.light_mode),
          label: 'Tema',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout),
          label: 'Logout',
        ),
      ],
    );
  }
}
