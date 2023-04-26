// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/features/clubs/domain/cubits/club_photo_slider/club_photo_slider_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ClubPhotoSlider extends StatelessWidget {
  const ClubPhotoSlider({
    super.key,
    required this.clubUrlImages,
  });

  final List<String> clubUrlImages;

  @override
  Widget build(BuildContext context) {
    if (clubUrlImages.isEmpty) {
      return Container(
        height: 210,
        color: AppColors.kOxford20,
      );
    }

    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: clubUrlImages.length,
          options: CarouselOptions(
            height: 210,
            autoPlay: clubUrlImages.isEmpty ? false : true,
            enableInfiniteScroll: clubUrlImages.isEmpty ? false : true,
            scrollPhysics: clubUrlImages.isEmpty
                ? const NeverScrollableScrollPhysics()
                : const AlwaysScrollableScrollPhysics(),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              getIt<ClubPhotoSliderCubit>().updateActivePhoto(index: index);
            },
          ),
          itemBuilder: (context, index, realIndex) {
            return _buildClubPhoto(context, index);
          },
        ),
        Positioned(
          bottom: 0,
          child: IgnorePointer(
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            const SizedBox(height: 190),
            TopCenter(
              child: _buildPhotosSliderIndicator(clubUrlImages),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPhotosSliderIndicator(List<String?> clubUrlImages) {
    return BlocBuilder<ClubPhotoSliderCubit, ClubPhotoSliderState>(
      bloc: getIt<ClubPhotoSliderCubit>(),
      builder: (context, state) {
        return state.when(
          initial: (index) => _buildAnimatedDots(index),
          loaded: (index) => _buildAnimatedDots(index),
        );
      },
    );
  }

  Widget _buildAnimatedDots(int index) {
    if (clubUrlImages.length == 1) {
      return const SizedBox();
    }
    return AnimatedSmoothIndicator(
      activeIndex: index,
      count: clubUrlImages.length,
      effect: WormEffect(
        dotHeight: 8,
        dotWidth: 8,
        dotColor: AppColors.kBaseWhite.withOpacity(.2),
        activeDotColor: AppColors.kBaseWhite,
      ),
    );
  }

  Widget _buildClubPhoto(BuildContext context, int index) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CachedNetworkImage(
        placeholder: (context, url) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 210,
            color: AppColors.kOxford40,
          );
        },
        imageUrl: clubUrlImages[index],
        width: MediaQuery.of(context).size.width,
        height: 210,
        fit: BoxFit.cover,
      ),
    );
  }
}
