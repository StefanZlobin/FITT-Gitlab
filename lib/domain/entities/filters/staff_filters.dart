// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_filters.freezed.dart';
part 'staff_filters.g.dart';

@freezed
class StaffFilters with _$StaffFilters {
  StaffFilters._();

  const factory StaffFilters({
    @JsonKey(name: 'club_ids') @Default(<String>[]) List<String> clubUuids,
    @JsonKey(name: 'start_date_for_kpi_show') DateTime? startDateForKPIShow,
    @JsonKey(name: 'end_date_for_kpi_show') DateTime? endDateForKPIShow,
  }) = _StaffFilters;

  factory StaffFilters.fromJson(Map<String, dynamic> json) =>
      _$StaffFiltersFromJson(json);
}
