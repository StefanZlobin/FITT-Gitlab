import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatefulWidget {
  const AppElevatedButton({
    Key? key,
    this.onPressed,
    this.onPressedAsync,
    required this.textButton,
    this.marginButton = const EdgeInsets.only(left: 16, right: 16, bottom: 32),
    this.buttonColor = AppColors.kPrimaryBlue,
    this.isHeight = true,
    this.isDisable = false,
    this.errorText,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final AsyncCallback? onPressedAsync;
  final EdgeInsetsGeometry marginButton;
  final Widget textButton;
  final Color buttonColor;
  final bool isHeight;
  final bool isDisable;
  final Widget? errorText;

  @override
  State<AppElevatedButton> createState() => _AppElevatedButtonState();
}

class _AppElevatedButtonState extends State<AppElevatedButton> {
  // The indicator will show up when _isLoading = true.
  // The button will be unpressable, too.
  bool _isLoading = false;

  // This function will be triggered when the button is pressed
  Future<void> _onPressedCallback() async {
    setState(() {
      _isLoading = true;
    });

    // Our onPressed callback
    widget.onPressed?.call();
    await widget.onPressedAsync?.call();

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.isDisable,
      child: Container(
        margin: widget.marginButton,
        child: ElevatedButton.icon(
          onPressed: () => _isLoading ? null : _onPressedCallback(),
          label: _isLoading
              ? const SizedBox()
              : DefaultTextStyle(
                  style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
                  child: widget.errorText ?? widget.textButton,
                ),
          icon: _isLoading
              ? const CircularProgressIndicator(color: AppColors.kBaseWhite)
              : Icon(
                  Icons.abc,
                  size: 0,
                  color: AppColors.kBaseWhite.withOpacity(1),
                ),
          style: ElevatedButton.styleFrom(
            backgroundColor: (!widget.isDisable) ? widget.buttonColor : AppColors.kOxford10,
            elevation: 0,
            fixedSize: Size(MediaQuery.of(context).size.width, widget.isHeight ? 56 : 48),
          ),
        ),
      ),
    );
  }
}
