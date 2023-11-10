import 'package:flutter/material.dart';

class NavbarWidget {
  BottomNavigationBarItem getItem() {
    return BottomNavigationBarItem(
        icon: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          height: 56,
          width: 56,
          child: const Icon(Icons.favorite),
        ),
        label: '');
  }
}
