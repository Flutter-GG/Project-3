import 'package:flutter/material.dart';
import 'package:weather_api/components/bottom_navigation_bar_widget.dart';
import 'package:weather_api/screens/history_screen.dart';
import 'package:weather_api/screens/home_screen.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => HomePageState();
}

class HomePageState extends State<NavigationBarPage> {
  int index = 0;

  final List pages = [const Home(), const History()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.blue.withOpacity(0.1),
        indicatorColor: Colors.blue.withOpacity(0.5),
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        height: 60,
        destinations: const [
          BottomNavigationBarItemWidget(
            icon: Icons.home_outlined,
            selectedIcon: Icons.home,
          ),
          BottomNavigationBarItemWidget(
            icon: Icons.bookmark_outline,
            selectedIcon: Icons.bookmark,
          ),
        ], // isBookmark
      ),
    );
  }
}
