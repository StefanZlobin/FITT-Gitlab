import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/domain/entities/price/price.dart';
import 'package:fitt/features/clubs/domain/blocs/club_filtering/club_filtering_bloc.dart';
import 'package:fitt/features/clubs/domain/entities/facility/facility.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/forms/app_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

import '../../../core/utils/widget_alignments.dart';

class FilterModalBottomSheet extends StatelessWidget {
  const FilterModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .8 + 25 + 16,
      decoration: ShapeDecoration(
        color: AppColors.kBaseWhite,
        shape: SuperellipseShape(
          borderRadius: superellipseRadiusOnly(
            24,
            topLeft: true,
            topRight: true,
            bottomLeft: true,
            bottomRight: true,
          ),
        ),
      ),
      child: Column(
        children: [
          _buildRoundedContainer(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * .8 - 32 - 88,
            child: BlocBuilder<ClubFilteringBloc, ClubFilteringState>(
              bloc: getIt<ClubFilteringBloc>(),
              buildWhen: (previous, current) => true,
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (facilities, price, isPUpdate, isFUpdated) {
                    return ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      children: [
                        _buildHeader(),
                        const SizedBox(height: 32),
                        _buildFacilitiesFilter(facilities!),
                        const Separator(
                          margin: EdgeInsets.symmetric(vertical: 32),
                        ),
                        _buildPriceFilterWidget(context, price),
                      ],
                    );
                  },
                  error: (error) => const SizedBox(),
                );
              },
            ),
          ),
          BottomCenter(
            child: BlocBuilder<ClubFilteringBloc, ClubFilteringState>(
              bloc: getIt<ClubFilteringBloc>(),
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),
                  error: (error) => const SizedBox(),
                  loaded: (_, __, isPriceUpdate, isFacilitiesUpdated) {
                    if (isPriceUpdate || isFacilitiesUpdated) {
                      return _buildShowClubsButton(context, isDisable: false);
                    }
                    return _buildShowClubsButton(context, isDisable: true);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceFilterWidget(BuildContext context, Price? price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 48,
          width: (MediaQuery.of(context).size.width - 32 - 8) / 2,
          child: AppTextFormField(
            title: const SizedBox(),
            padding: const EdgeInsets.all(0),
            keyboardType: const TextInputType.numberWithOptions(
              signed: true,
              decimal: true,
            ),
            inputFormatters: TextInputFormatter.withFunction(
              (oldValue, newValue) {
                if (newValue.text.contains('\u20BD')) {
                  return TextEditingValue(
                    text: newValue.text,
                    selection: newValue.selection,
                  );
                }
                return TextEditingValue(
                  text: '${newValue.text} \u20BD',
                  selection: newValue.selection,
                );
              },
            ),
            placeholder: '${price?.minPrice ?? 0} \u20BD',
            onFieldSubmitted: (value) {
              final minPrice = int.parse(value!.substring(0, value.length - 2));
              final newPrice =
                  Price(minPrice: minPrice, maxPrice: price!.maxPrice);
              getIt<ClubFilteringBloc>().add(
                ClubFilteringEvent.priceChanged(price: newPrice),
              );
            },
          ),
        ),
        SizedBox(
          height: 48,
          width: (MediaQuery.of(context).size.width - 32 - 8) / 2,
          child: AppTextFormField(
            padding: const EdgeInsets.all(0),
            title: const SizedBox(),
            keyboardType: const TextInputType.numberWithOptions(
              signed: true,
              decimal: true,
            ),
            inputFormatters: TextInputFormatter.withFunction(
              (oldValue, newValue) {
                if (newValue.text.contains('\u20BD')) {
                  return TextEditingValue(
                    text: newValue.text,
                    selection: newValue.selection,
                  );
                }
                return TextEditingValue(
                  text: '${newValue.text} \u20BD',
                  selection: newValue.selection,
                );
              },
            ),
            placeholder: '${price?.maxPrice ?? 0} \u20BD',
            onFieldSubmitted: (value) {
              final maxPrice = int.parse(value!.substring(0, value.length - 2));
              final newPrice =
                  Price(minPrice: price!.minPrice, maxPrice: maxPrice);
              getIt<ClubFilteringBloc>().add(
                ClubFilteringEvent.priceChanged(price: newPrice),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildShowClubsButton(
    BuildContext context, {
    required bool isDisable,
  }) {
    return AppElevatedButton(
      textButton: const Text('Показать клубы'),
      isDisable: isDisable,
      marginButton:
          const EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 16),
      onPressed: () => context.pop(),
    );
  }

  Row _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Фильтры',
          style: AppTypography.kH24B.apply(color: AppColors.kBaseBlack),
        ),
        TextButton(
          onPressed: () => getIt<ClubFilteringBloc>()
              .add(const ClubFilteringEvent.clearFilter()),
          child: Text(
            'Сбросить',
            style: AppTypography.kH14.apply(color: AppColors.kPrimaryBlue),
          ),
        ),
      ],
    );
  }

  Widget _buildFacilitiesFilter(
    Map<Facility, bool> selectedFacilities,
  ) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (var facility in selectedFacilities.entries) ...[
          GestureDetector(
            onTap: () {
              getIt<ClubFilteringBloc>().add(
                ClubFilteringEvent.facilitiesChanged(facility: facility.key),
              );
            },
            child: Container(
              height: 40,
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 11.5),
              decoration: ShapeDecoration(
                color: facility.value ? AppColors.kPrimaryBlue : Colors.white,
                shape: SuperellipseShape(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                  side: facility.value
                      ? const BorderSide(color: AppColors.kPrimaryBlue)
                      : const BorderSide(color: AppColors.kOxford20),
                ),
              ),
              child: Text(
                facility.key.title,
                style: AppTypography.kBody14.apply(
                  color: facility.value
                      ? AppColors.kBaseWhite
                      : AppColors.kOxford40,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildRoundedContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width * 0.38,
        16,
        MediaQuery.of(context).size.width * 0.38,
        36,
      ),
      height: 5,
      decoration: ShapeDecoration(
        color: AppColors.kOxford20,
        shape: SuperellipseShape(
          borderRadius: superellipseRadiusOnly(
            5,
            topRight: true,
            topLeft: true,
            bottomLeft: true,
            bottomRight: true,
          ),
        ),
      ),
    );
  }
}
