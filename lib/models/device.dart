import 'package:flutter/material.dart';

class Device {
  final String id;
  final List<String> rooms;
  final String title;
  final String switcH;
  final String icons;
  final List<Color> color;

  const Device({
    required this.id,
    required this.rooms,
    required this.title,
    required this.switcH,
    required this.icons,
    required this.color,
  });
}
