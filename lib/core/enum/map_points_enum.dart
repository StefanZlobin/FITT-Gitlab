import 'package:json_annotation/json_annotation.dart';

enum MapPointsEnum {
  @JsonValue('CLUB_WITH_BATCH')
  partnerClubWithBatch,

  @JsonValue('CLUB')
  partnerClub,

  none,
}
