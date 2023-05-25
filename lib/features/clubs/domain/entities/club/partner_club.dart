// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/features/clubs/domain/entities/activity/activity.dart';
import 'package:fitt/features/clubs/domain/entities/address/address.dart';
import 'package:fitt/features/clubs/domain/entities/document/document.dart';
import 'package:fitt/features/clubs/domain/entities/facility/facility.dart';
import 'package:fitt/features/clubs/domain/entities/organization/organization.dart';
import 'package:fitt/features/clubs/domain/entities/photo/photo.dart';
import 'package:fitt/features/clubs/domain/entities/rating/rating.dart';
import 'package:fitt/features/clubs/domain/entities/work_shedule/work_shedule.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_club.freezed.dart';
part 'partner_club.g.dart';

@freezed
class PartnerClub with _$PartnerClub {
  factory PartnerClub({
    @JsonKey(name: 'id') required String? uuid,
    @JsonKey(name: 'min_price', fromJson: toRublesNullable)
        required int? minPrice,
    @JsonKey(name: 'address') required Address? address,
    @JsonKey(name: 'distance') required double? distance,
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
    @JsonKey(name: 'timezone') required String? timezone,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'phone') required String? phoneNumber,
    @JsonKey(name: 'pay_available') required bool? payAvailable,
  }) = _PartnerClub;

  PartnerClub._();

  factory PartnerClub.fromJson(Map<String, dynamic> json) =>
      _$PartnerClubFromJson(json);

  String get shortLabel => label!.length < 20
      ? label!
      : label!.replaceRange(20, label!.length, '...');

  String get shortLabel25 => label!.length < 25
      ? label!
      : label!.replaceRange(25, label!.length, '...');
}
