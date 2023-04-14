import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/time_slice_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/blocs/analytics_filtering/analytics_filtering_bloc.dart';
import 'package:fitt/domain/blocs/analytics_kpi/analytics_kpi_bloc.dart';
import 'package:fitt/domain/cubits/admin_clubs/admin_clubs_cubit.dart';
import 'package:fitt/domain/entities/kpi/kpi.dart';
import 'package:fitt/presentation/components/menu/manager_menu_wrapper.dart';
import 'package:fitt/presentation/components/staff_clubs_filter_row.dart';
import 'package:fitt/presentation/pages/analytics/widget/dashboard.dart';
import 'package:fitt/presentation/pages/analytics/widget/kpi_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    getIt<AdminClubsCubit>().getAdminClubs();

    return Scaffold(
      drawer: const ManagerMenuWrapper(),
      appBar: _buildAppBar(context),
      body: BlocBuilder<AnalyticsKPIBloc, AnalyticsKPIState>(
        bloc: getIt<AnalyticsKPIBloc>(),
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loaded: (kpi) {
              return ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                primary: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                children: [
                  const SizedBox(height: 24),
                  const Dashboard(),
                  _buildTimeSliceFilter(),
                  const SizedBox(height: 24),
                  _buildKPICards(kpi),
                ],
              );
            },
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: BlocBuilder<AdminClubsCubit, AdminClubsState>(
        bloc: getIt<AdminClubsCubit>(),
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loaded: (_, networkLabel) => Text(networkLabel),
            error: (_) => const SizedBox(),
          );
        },
      ),
      leading: Builder(builder: (c) {
        return IconButton(
          onPressed: () => Scaffold.of(c).openDrawer(),
          icon: const Icon(AppIcons.menu_burger),
        );
      }),
      bottom: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: const StaffClubsFilterRow(
          isAdminWorkoutsPage: false,
        ),
      ),
    );
  }

  Widget _buildTimeSliceFilter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<AnalyticsFilteringBloc, AnalyticsFilteringState>(
          bloc: getIt<AnalyticsFilteringBloc>(),
          builder: (context, state) {
            return state.when(
              initial: () {
                return _buildItemFilter(
                  TimeSliceEnum.year,
                  false,
                );
              },
              loaded: (timeSlice, clubsUuid, _, __, ___) {
                return _buildItemFilter(
                  TimeSliceEnum.year,
                  timeSlice == TimeSliceEnum.year,
                );
              },
              error: (error) {
                return _buildItemFilter(
                  TimeSliceEnum.year,
                  false,
                );
              },
            );
          },
        ),
        const SizedBox(width: 8),
        BlocBuilder<AnalyticsFilteringBloc, AnalyticsFilteringState>(
          bloc: getIt<AnalyticsFilteringBloc>(),
          builder: (context, state) {
            return state.when(
              initial: () {
                return _buildItemFilter(
                  TimeSliceEnum.month,
                  false,
                );
              },
              loaded: (timeSlice, clubsUuid, _, __, ___) {
                return _buildItemFilter(
                  TimeSliceEnum.month,
                  timeSlice == TimeSliceEnum.month,
                );
              },
              error: (error) {
                return _buildItemFilter(
                  TimeSliceEnum.month,
                  false,
                );
              },
            );
          },
        ),
        const SizedBox(width: 8),
        BlocBuilder<AnalyticsFilteringBloc, AnalyticsFilteringState>(
          bloc: getIt<AnalyticsFilteringBloc>(),
          builder: (context, state) {
            return state.when(
              initial: () {
                return _buildItemFilter(
                  TimeSliceEnum.week,
                  false,
                );
              },
              loaded: (timeSlice, clubsUuid, _, __, ___) {
                return _buildItemFilter(
                  TimeSliceEnum.week,
                  timeSlice == TimeSliceEnum.week,
                );
              },
              error: (error) {
                return _buildItemFilter(
                  TimeSliceEnum.week,
                  false,
                );
              },
            );
          },
        ),
        const SizedBox(width: 8),
        BlocBuilder<AnalyticsFilteringBloc, AnalyticsFilteringState>(
          bloc: getIt<AnalyticsFilteringBloc>(),
          builder: (context, state) {
            return state.when(
              initial: () {
                return _buildItemFilter(
                  TimeSliceEnum.day,
                  false,
                );
              },
              loaded: (timeSlice, clubsUuid, _, __, ___) {
                return _buildItemFilter(
                  TimeSliceEnum.day,
                  timeSlice == TimeSliceEnum.day,
                );
              },
              error: (error) {
                return _buildItemFilter(
                  TimeSliceEnum.day,
                  false,
                );
              },
            );
          },
        ),
      ],
    );
  }

  Widget _buildItemFilter(TimeSliceEnum timeSlice, bool isActive) {
    return GestureDetector(
      onTap: () => getIt<AnalyticsFilteringBloc>().add(
        AnalyticsFilteringEvent.timeSliceChanged(timeSlice: timeSlice),
      ),
      child: Container(
        height: 32,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: isActive ? AppColors.kOxford10 : null,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          timeSlice.timeSliceToString(timeSlice),
          style: AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
        ),
      ),
    );
  }

  Wrap _buildKPICards(KPI kpi) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        KPICard(
          cardLabel: 'Посетители',
          kpiValue: '${kpi.visitorsCount}',
        ),
        KPICard(
          cardLabel: 'Выручка тыс.руб.',
          kpiValue: '${((kpi.revenue ~/ 100) / 1000).floor()}',
        ),
        KPICard(
          cardLabel: 'Время ч',
          kpiValue: '${kpi.durationOfHours}',
        ),
        KPICard(
          cardLabel: 'Средняя стоимость ч, руб.',
          kpiValue: '${((kpi.averageCostPerHour ~/ 100) / 1000).floor()}',
        ),
        KPICard(
          cardLabel: 'Динамика посетителей',
          kpiValue: '${kpi.dynamicsOfVisitors}%',
          showInfo: true,
        ),
        KPICard(
          cardLabel: 'Динамика выручки',
          kpiValue: '${(kpi.revenueDynamics).toStringAsFixed(1)}%',
          showInfo: true,
        ),
      ],
    );
  }
}
