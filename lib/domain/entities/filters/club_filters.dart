// ignore_for_file: invalid_annotation_target

import 'package:fitt/features/clubs/domain/entities/facility/facility.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_filters.freezed.dart';
part 'club_filters.g.dart';

@freezed
class ClubFilters with _$ClubFilters {
  static const defaultValue = ClubFilters(favorite: false);

  const factory ClubFilters({
    //TODO: при фильтрации передавать только facility id
    @JsonKey(name: 'facility_ids') List<Facility>? facilities,
    @JsonKey(name: 'price_gte') int? minPrice,
    @JsonKey(name: 'price_lte') int? maxPrice,
    @JsonKey(name: 'only_with_batch') bool? onlyWithBatch,
    @JsonKey(name: 'only_with_slots') bool? onlyWithSlots,
    @JsonKey(name: 'only_favorite') bool? favorite,
  }) = _ClubFilters;

  factory ClubFilters.fromJson(Map<String, dynamic> json) =>
      _$ClubFiltersFromJson(json);
}
