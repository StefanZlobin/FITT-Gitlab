// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/domain/entities/activity/activity.dart';
import 'package:fitt/domain/entities/address/address.dart';
import 'package:fitt/domain/entities/document/document.dart';
import 'package:fitt/domain/entities/facility/facility.dart';
import 'package:fitt/domain/entities/organization/organization.dart';
import 'package:fitt/domain/entities/photo/photo.dart';
import 'package:fitt/domain/entities/rating/rating.dart';
import 'package:fitt/domain/entities/work_shedule/work_shedule.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_club.freezed.dart';
part 'partner_club.g.dart';

@freezed
class PartnerClub with _$PartnerClub {
  const factory PartnerClub({
    @JsonKey(name: 'id') required String? uuid,
    @JsonKey(name: 'min_price', fromJson: toRublesNullable)
        required int? minPrice,
    @JsonKey(name: 'address') required Address? address,
    @JsonKey(name: 'distance') required String? distance,
    @JsonKey(name: 'label') required String? label,
    @JsonKey(name: 'rating') required Rating? rating,
    @JsonKey(name: 'photos') required List<Photo>? photos,
    @JsonKey(name: 'facilities') required List<Facility>? facilities,
    @JsonKey(name: 'batch_hours_available')
        required double? batchHoursAvailable,
    @JsonKey(name: 'is_favorite') required bool? isFavorite,
    @JsonKey(name: 'work_schedule') required List<WorkSchedule>? workSchedule,
    @JsonKey(name: 'activities') required List<Activity>? activities,
    @JsonKey(name: 'organization') required Organization? organization,
    @JsonKey(name: 'documents') required List<Document>? documents,
    //@JsonKey(name: 'batches') required String? batches,
    @JsonKey(name: 'timezone') required String? timezone,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'phone') required String? phoneNumber,
  }) = _PartnerClub;

  factory PartnerClub.fromJson(Map<String, dynamic> json) =>
      _$PartnerClubFromJson(json);
}
