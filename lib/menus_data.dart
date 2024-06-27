import 'package:flutter/material.dart';

class Menus_data {
  final String id;
  final String title;
  final Color color;

  const Menus_data({
    required this.id,
    required this.title,
    this.color = Colors.lightGreen,
  });
}