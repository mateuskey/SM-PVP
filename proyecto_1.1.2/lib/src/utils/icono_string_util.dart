import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'login': Icons.login,
  'account_circle': Icons.account_circle,
  'add_to_home_screen': Icons.add_to_home_screen,
  'car_repair': Icons.car_repair,
};

Icon getIcon(String nombreIcono) {
  
  return Icon(_icons[nombreIcono], color: Colors.black);
}
