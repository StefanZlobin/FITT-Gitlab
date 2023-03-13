// ignore_for_file: parameter_assignments

import 'package:fitt/core/constants/other_constants.dart';
import 'package:flutter/material.dart';

BorderRadius superellipseRadius(
  double value, {
  bool topLeft = true,
  bool topRight = true,
  bool bottomLeft = true,
  bool bottomRight = true,
}) {
  value *= kAppBorderRadiusToSuperellipseFactor;
  final tl = Radius.circular(topLeft ? value : 0);
  final tr = Radius.circular(topRight ? value : 0);
  final bl = Radius.circular(bottomLeft ? value : 0);
  final br = Radius.circular(bottomRight ? value : 0);
  return BorderRadius.only(
    topLeft: tl,
    topRight: tr,
    bottomLeft: bl,
    bottomRight: br,
  );
}

BorderRadius superellipseRadiusOnly(
  double value, {
  bool topLeft = false,
  bool topRight = false,
  bool bottomLeft = false,
  bool bottomRight = false,
}) {
  return superellipseRadius(
    value,
    topLeft: topLeft,
    topRight: topRight,
    bottomLeft: bottomLeft,
    bottomRight: bottomRight,
  );
}
