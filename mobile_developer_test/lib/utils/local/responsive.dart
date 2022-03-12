import 'package:flutter/material.dart';
import 'dart:math' as math;

class Resposive {
  double _width = 0, _heigth = 0, _diagonal = 0;
  bool _isTablet = false;

  double get width => _width;
  double get heigth => _heigth;
  double get diagonal => _diagonal;
  bool get isTablet => _isTablet;

  Resposive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    _width = size.width;
    _heigth = size.height;
    _diagonal = math.sqrt(math.pow(size.width, 2) + math.pow(size.height, 2));
    _isTablet = size.shortestSide >= 600;
  }

  double wPorcentaje(double porcentaje) => _width * porcentaje / 100;
  double hPorcentaje(double porcentaje) => _heigth * porcentaje / 100;
  double dPorcentaje(double porcentaje) => _diagonal * porcentaje / 100;
}
