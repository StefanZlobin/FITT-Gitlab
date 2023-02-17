import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// source code taken from https://github.com/flutter/flutter/issues/14488#issuecomment-719963492

typedef OnWidgetSizeChange = void Function(Size size);

class MeasureSizeRenderObject extends RenderProxyBox {
  MeasureSizeRenderObject(this.onChange);

  Size? oldSize;
  final OnWidgetSizeChange onChange;

  @override
  void performLayout() {
    super.performLayout();

    final newSize = child!.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onChange(newSize);
    });
  }
}

/// Widget that provides size of it's child in onChange callback
class MeasureSize extends SingleChildRenderObjectWidget {
  const MeasureSize({
    Key? key,
    required this.onChange,
    required Widget child,
  }) : super(key: key, child: child);

  final OnWidgetSizeChange onChange;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return MeasureSizeRenderObject(onChange);
  }
}
