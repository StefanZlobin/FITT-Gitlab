import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/features/clubs/domain/blocs/club_filtering/club_filtering_bloc.dart';
import 'package:fitt/features/clubs/domain/entities/address/search_address.dart';
import 'package:fitt/features/map/domain/blocs/is_searching/is_searching_bloc.dart';
import 'package:fitt/features/map/domain/blocs/search/search_bloc.dart';
import 'package:fitt/gen/assets.gen.dart';
import 'package:fitt/presentation/components/modals/filter_modal_bottom_sheet.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final FloatingSearchBarController searchController =
      FloatingSearchBarController();

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    if (searchController.isOpen) {
      getIt<IsSearchingBloc>()
          .add(const IsSearchingEvent.onSearch(isSearching: true));
    } else {
      getIt<IsSearchingBloc>()
          .add(const IsSearchingEvent.onSearch(isSearching: false));
    }

    return FloatingSearchBar(
      axisAlignment: isPortrait ? 1.0 : -1.0,
      insets: const EdgeInsets.all(0),
      controller: searchController,
      hint: 'Найти клуб или место на карте',
      hintStyle: AppTypography.kBody14.apply(color: AppColors.kOxford40),
      automaticallyImplyDrawerHamburger: false,
      automaticallyImplyBackButton: false,
      width: MediaQuery.of(context).size.width - 48 - 16 - 16 - 8,
      openWidth: MediaQuery.of(context).size.width,
      backdropColor: AppColors.kBaseWhite,
      elevation: 10,
      shadowColor: AppColors.kBaseWhite.withOpacity(0),
      border: searchController.isOpen
          ? const BorderSide(color: AppColors.kOxford20)
          : BorderSide(
              color: AppColors.kBaseWhite.withOpacity(0),
              width: 0,
            ),
      transition: CircularFloatingSearchBarTransition(),
      transitionDuration: const Duration(milliseconds: 300),
      transitionCurve: Curves.linear,
      physics: const BouncingScrollPhysics(),
      isScrollControlled: true,
      margins: searchController.isOpen
          ? const EdgeInsets.only(left: 16, right: 16, top: 62)
          : const EdgeInsets.only(top: 62, right: 16),
      padding: searchController.isOpen
          ? const EdgeInsets.only(left: 16, right: 16)
          : const EdgeInsets.only(left: 16),
      leadingActions: [
        FloatingSearchBarAction(
          showIfOpened: true,
          child: Container(
            width: 1,
            margin: const EdgeInsets.only(right: 24),
            child: const IconButton(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(0),
              icon: Icon(
                AppIcons.search,
                size: 17,
                color: AppColors.kOxford40,
              ),
              onPressed: null,
            ),
          ),
        ),
      ],
      actions: [
        if (searchController.isOpen)
          GestureDetector(
            onTap: () {
              setState(() {
                searchController.clear();
                searchController.close();
              });
            },
            child: const Icon(
              AppIcons.close_big,
              color: AppColors.kOxford40,
              size: 16,
            ),
          )
        else
          Stack(
            children: [
              FloatingSearchBarAction(
                child: IconButton(
                  icon: const Icon(
                    AppIcons.filters,
                    size: 18,
                    color: AppColors.kOxford60,
                  ),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      useRootNavigator: true,
                      backgroundColor: AppColors.kBaseWhite.withOpacity(0),
                      builder: (context) {
                        return const FilterModalBottomSheet();
                      },
                    );
                  },
                ),
              ),
              BlocBuilder<ClubFilteringBloc, ClubFilteringState>(
                bloc: getIt<ClubFilteringBloc>(),
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox(),
                    error: (error) => const SizedBox(),
                    loaded: (clubFilters, isPUpdate, __) {
                      final countActiveFacilities = clubFilters
                              .facilities?.entries
                              .where((element) => element.value)
                              .length ??
                          0;
                      final countActiveFilters =
                          countActiveFacilities + (isPUpdate ? 1 : 0);
                      if (countActiveFilters == 0) return const SizedBox();
                      return Positioned(
                        right: 5,
                        top: 5,
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet<void>(
                              context: context,
                              isScrollControlled: true,
                              useRootNavigator: true,
                              backgroundColor:
                                  AppColors.kBaseWhite.withOpacity(0),
                              builder: (context) {
                                return const FilterModalBottomSheet();
                              },
                            );
                          },
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: AppColors.kPrimaryBlue,
                            ),
                            child: Center(
                              child: Text(
                                '$countActiveFilters',
                                style: AppTypography.kBody10
                                    .apply(color: AppColors.kBaseWhite),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
      ],
      borderRadius: superellipseRadius(7),
      onFocusChanged: (isFocused) {
        if (isFocused) {
          // ignore: no-empty-block
          setState(() {});
        }
      },
      onQueryChanged: (query) =>
          getIt<SearchBloc>().add(SearchEvent.search(query: query)),
      builder: (context, transition) {
        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: getIt<SearchBloc>(),
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          suggesstionTapped: (_) => const SizedBox(),
          loaded: (searchAddresses) {
            if (searchAddresses.isEmpty) {
              return _buildEmptyWidget();
            }
            return ListView.separated(
              padding: const EdgeInsets.only(top: 18),
              itemCount: searchAddresses.length,
              separatorBuilder: (_, __) {
                return const Separator(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                );
              },
              itemBuilder: (BuildContext context, int index) {
                final searchAddress = searchAddresses[index];
                return _buildAddressRow(searchAddress);
              },
            );
          },
          error: (error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildAddressRow(SearchAddress searchAddress) {
    return GestureDetector(
      onTap: () {
        getIt<SearchBloc>().add(
          SearchEvent.suggestionTap(searchAddress: searchAddress),
        );
        searchController.clear();
        searchController.close();
      },
      child: SizedBox(
        height: 72,
        child: Row(
          children: [
            const SizedBox(width: 1),
            SizedBox(
              width: 16,
              height: 16,
              child: Image(image: Assets.images.checkin.provider()),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                searchAddress.suggestionAddressWithMask,
                style: AppTypography.kBody14.apply(color: AppColors.kOxford),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildEmptyWidget() {
    return Column(
      children: [
        const SizedBox(height: 96),
        Text(
          '¯\u005C_(ツ)_/¯',
          style: AppTypography.kNum24.apply(color: AppColors.kOxford60),
        ),
        const SizedBox(height: 16),
        Text(
          'Мы ничего не нашли, попробуйте \nдругой запрос',
          style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
