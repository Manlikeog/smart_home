import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Room {
  final String id;
  final String title;
  final String devices;
  final String icons;
  final List<Color> color;

  const Room({
    required this.id,
    required this.title,
    required this.devices,
    required this.icons,
    required this.color,
  });
}
