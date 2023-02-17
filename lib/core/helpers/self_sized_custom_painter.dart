import 'package:flutter/cupertino.dart';

/// [CustomPainter] that defines size by itself and not by incoming constraints
abstract class SelfSizedCustomPainter extends CustomPainter {
  Size get realSize;
}
