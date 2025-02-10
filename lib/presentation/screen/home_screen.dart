import 'package:flutter/material.dart';
import 'package:jayecommerce/presentation/screen/productlist_screen.dart';
import 'package:jayecommerce/presentation/screen/test_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = [TestScreen(), ProductlistScreen()];
  int currentIndex = 0;
  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.badminton,
              ),
              label: 'ยังไม่รับกิจนิมนต์'),
          BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.badminton,
              ),
              label: 'ยังไม่รับกิจนิมนต์'),
        ],
      ),
    );
  }
}
