// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/enum/time_slice_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_filters.freezed.dart';
part 'analytics_filters.g.dart';

@freezed
class AnalyticsFilters with _$AnalyticsFilters {
  const factory AnalyticsFilters({
    @JsonKey(name: 'club_ids') @Default(<String>[]) List<String> clubsUuid,
    @JsonKey(name: 'slice')
    @Default(TimeSliceEnum.week)
        TimeSliceEnum timeSlice,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
  }) = _AnalyticsFilters;

  factory AnalyticsFilters.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsFiltersFromJson(json);
}
