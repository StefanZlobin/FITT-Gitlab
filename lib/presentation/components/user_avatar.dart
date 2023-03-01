import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/constants/border_avatar_radius.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:fitt/presentation/components/animated_dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, this.avatarSize = 56, this.isAdminPage = false});

  final double avatarSize;
  final bool isAdminPage;

  @override
  Widget build(BuildContext context) {
    getIt<UserBloc>().add(const UserEvent.checkUser());

    return BlocBuilder<UserBloc, UserState>(
      bloc: getIt<UserBloc>(),
      builder: (context, state) {
        return state.when(
          loading: () => const SizedBox(),
          loaded: (user) => _buildUserMenuTile(context, user),
          loadedWithNoUser: (_) => const SizedBox(),
          error: (error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildUserMenuTile(BuildContext context, User? user) {
    return GestureDetector(
      onTap: () => isAdminPage
          ? context.push(AppRoute.map.routeToPath)
          : context.push(AppRoute.account.routeToPath),
      child: ListTile(
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        leading: _setAvatarWidget(user),
        title: user?.firstName == null && user?.lastName == null
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.kOxford20),
                ),
                child: Center(
                  child: Text(
                    'Заполнить ФИО',
                    style: AppTypography.kH14.apply(color: AppColors.kOxford60),
                  ),
                ),
              )
            : Text('${user?.firstName} ${user?.lastName}'),
        subtitle: user?.firstName == null && user?.lastName == null
            ? null
            : FutureBuilder<Position?>(
                future: getIt<GeolocationService>().getLastKnowPosition(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const AnimatedDots();
                  }
                  final position = snapshot.data;
                  if (position == null) {
                    return FutureBuilder<Position>(
                      future: getIt<GeolocationService>().getCurrentPosition(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const AnimatedDots();
                        }
                        final position = snapshot.data;
                        if (position == null) {
                          return const Text('Геопозиция не определена');
                        }
                        return _buildCurrentCity(position);
                      },
                    );
                  }
                  return _buildCurrentCity(position);
                },
              ),
        trailing: isAdminPage
            ? const Icon(
                AppIcons.arr_big_right,
                size: 18,
                color: AppColors.kBaseBlack,
              )
            : null,
      ),
    );
  }

  FutureBuilder<List<Placemark>> _buildCurrentCity(Position position) {
    return FutureBuilder<List<Placemark>>(
      future: placemarkFromCoordinates(position.latitude, position.longitude),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const AnimatedDots();
        }
        final locationAddress = snapshot.data;
        if (locationAddress == null) {
          return const Text('Не удалось определить город');
        }
        return Text('${locationAddress[0].locality}');
      },
    );
  }

  Widget _setAvatarWidget(User? user) {
    return user?.avatar != null
        ? _buildAvatar(user!)
        : _buildAvatarPlaceholder();
  }

  Widget _buildAvatar(User user) {
    return Container(
      width: avatarSize,
      height: avatarSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(avatarSize * borderRadiusFactor),
        image: DecorationImage(
          image: CachedNetworkImageProvider(user.avatar!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildAvatarPlaceholder() {
    return Container(
      width: avatarSize,
      height: avatarSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(avatarSize * borderRadiusFactor),
        color: const Color(0xFFD2D2D2),
      ),
    );
  }
}
