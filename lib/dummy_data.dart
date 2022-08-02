import 'package:flutter/material.dart';
import './models/device.dart';

import './models/room.dart';

const DUMMY_ROOM = const [
  Room(
    id: 'c1',
    title: 'Living Room',
    devices: '4 Devices',
    color: [
      Color(0xfffdae9d),
      Color(0xffe374ca),
    ],
    icons: 'assets/images/livingroom.PNG',
  ),
  Room(
    id: 'c2',
    title: 'Bedroom',
    devices: '3 Devices',
    color: [
      Color(0xff7eb5f9),
      Color(0xff6475ff),
    ],
    icons: 'assets/images/bedroom.PNG',
  ),
  Room(
    id: 'c3',
    title: 'Bathroom',
    devices: '3 Devices',
    color: [
      Color(0xff69e2d8),
      Color(0xff5ea6da),
    ],
    icons: 'assets/images/bathroom.PNG',
  ),
  Room(
    id: 'c4',
    title: 'Dining Room',
    devices: '3 Devices',
    color: [
      Color(0xffc79dfd),
      Color(0xff74a0e3),
    ],
    icons: 'assets/images/diningroom.PNG',
  )
];

const DUMMY_DEVICE = const [
  Device(
    id: 'd1',
    rooms: [
      'c1',
      'c2',
      'c3',
      'c4',
    ],
    title: 'Light',
    switcH: 'on',
    icons: 'assets/images/lights.PNG',
    color: [
      Color(0xff69e2d8),
      Color(0xff5ea6da),
    ],
  ),
  Device(
    id: 'd2',
    rooms: [
      'c1',
      'c2',
    ],
    title: 'Cooler',
    switcH: 'on',
    icons: 'assets/images/air-conditioner.png',
    color: [
      Color(0xffc79dfd),
      Color(0xff74a0e3),
    ],
  ),
  Device(
    id: 'd3',
    rooms: [
      'c1',
      'c2',
    ],
    title: 'TV',
    switcH: 'on',
    icons: 'assets/images/tv.PNG',
    color: [
      Color(0xfffdae9d),
      Color(0xffe374ca),
    ],
  ),
  Device(
    id: 'd4',
    rooms: [
      'c4',
    ],
    title: 'Fridge',
    switcH: 'on',
    icons: 'assets/images/refrigerator.png',
    color: [
      Color(0xff7eb5f9),
      Color(0xff6475ff),
    ],
  ),
  Device(
    id: 'd5',
    rooms: [
      'c4',
    ],
    title: 'Microwave',
    switcH: 'on',
    icons: 'assets/images/microwave.png',
    color: [
      Color(0xfffdae9d),
      Color(0xffe374ca),
    ],
  ),
  Device(
    id: 'd6',
    rooms: [
      'c3',
    ],
    title: 'Heater',
    switcH: 'on',
    icons: 'assets/images/water-heater.png',
    color: [
      Color(0xfffdae9d),
      Color(0xffe374ca),
    ],
  ),
  Device(
    id: 'd7',
    rooms: [
      'c3',
    ],
    title: 'Speaker',
    switcH: 'on',
    icons: 'assets/images/speaker.PNG',
    color: [
      Color(0xff7eb5f9),
      Color(0xff6475ff),
    ],
  ),
];
