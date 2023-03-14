import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ExpandableBuilder extends StatefulWidget {
  const ExpandableBuilder({
    Key? key,
    required this.collapsedBuilder,
    required this.expandedBuilder,
    this.theme,
    this.scrollOnExpand = false,
    this.scrollOnCollapse = false,
  }) : super(key: key);

  final Widget Function(BuildContext context, VoidCallback toggle) collapsedBuilder;
  final Widget Function(BuildContext context, VoidCallback toggle) expandedBuilder;
  final ExpandableThemeData? theme;
  final bool scrollOnExpand;
  final bool scrollOnCollapse;

  @override
  ExpandableBuilderState createState() => ExpandableBuilderState();
}

class ExpandableBuilderState extends State<ExpandableBuilder> {
  final _controller = ExpandableController();

  @override
  Widget build(BuildContext context) {
    final theme = widget.theme ??
        const ExpandableThemeData(
          crossFadePoint: 0.3,
          sizeCurve: Curves.easeOut,
        );

    return ExpandableNotifier(
      controller: _controller,
      child: ScrollOnExpand(
        scrollOnCollapse: widget.scrollOnCollapse,
        scrollOnExpand: widget.scrollOnExpand,
        child: Expandable(
          theme: theme,
          collapsed: widget.collapsedBuilder(context, _controller.toggle),
          expanded: widget.expandedBuilder(context, _controller.toggle),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
