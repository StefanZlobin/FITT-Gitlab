// ignore_for_file: library_private_types_in_public_api

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:flutter/material.dart';

class SubmitRating extends StatefulWidget {
  const SubmitRating({
    Key? key,
    required this.maximumRating,
  }) : super(key: key);

  final int maximumRating;

  @override
  _SubmitRatingState createState() => _SubmitRatingState();
}

class _SubmitRatingState extends State<SubmitRating> {
  int _currentRating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(widget.maximumRating, (index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            setState(() {
              _currentRating = index + 1;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: index < _currentRating
                ? const Icon(AppIcons.star_big,
                    color: AppColors.kPrimaryBlue, size: 24)
                : const Icon(
                    AppIcons.star_big,
                    color: AppColors.kOxford20,
                    size: 24,
                  ),
          ),
        );
      }),
    );
  }
}
