import 'package:flutter/material.dart';
import 'package:weather_api/constants/colors.dart';

class BottomNavigationBarItemWidget extends StatelessWidget {
  const BottomNavigationBarItemWidget({
    super.key,
    required this.icon,
    required this.selectedIcon,
  });

  final IconData icon;
  final IconData selectedIcon;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(
        icon,
        color: AppColors.blue.withOpacity(0.5),
      ),
      selectedIcon: Icon(
        selectedIcon,
        color: AppColors.blue,
      ),
      label: "",
    );
  }
}
