import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      selectedItemColor: Colors.pink[200],
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      items: const [
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: 'Sisas1'),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart),label: 'Sisas2'),
            BottomNavigationBarItem(icon: Icon(Icons.assignment_ind_outlined),label: 'Sisas3'),

      ]
    );
  }
}