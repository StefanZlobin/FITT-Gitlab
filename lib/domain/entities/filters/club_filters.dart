// ignore_for_file: invalid_annotation_target

import 'package:fitt/features/clubs/domain/entities/facility/facility.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_filters.freezed.dart';

@Freezed(fromJson: false)
class ClubFilters with _$ClubFilters {
  factory ClubFilters({
    // При фильтрации передавать только facility id
    @JsonKey(name: 'facility_ids') Map<Facility, bool>? facilities,
    @JsonKey(name: 'price_gte') int? minPrice,
    @JsonKey(name: 'price_lte') int? maxPrice,
    @JsonKey(name: 'only_with_batch') @Default(false) bool onlyWithBatch,
    @JsonKey(name: 'only_with_slots') @Default(true) bool onlyWithSlots,
    @JsonKey(name: 'only_favorite') @Default(false) bool favorite,
  }) = _ClubFilters;

  ClubFilters._();

  List<int> get getActiveFacilitiesIds =>
      facilities?.entries.where((f) => f.value).map((e) => e.key.id).toList() ??
      [];

  List<Facility> get getActiveFacilities =>
      facilities?.entries.where((f) => f.value).map((e) => e.key).toList() ??
      [];
}
