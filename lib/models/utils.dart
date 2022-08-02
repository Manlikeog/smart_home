import 'dart:math';

num degToRad(num deg) => deg * (pi / 180.0);

num normalize(value, min, max) => ((value - min) / (max - min));

const double kDiameter = 300;
const double kMinDegree = 16;
const double KmaxDegree = 28;
