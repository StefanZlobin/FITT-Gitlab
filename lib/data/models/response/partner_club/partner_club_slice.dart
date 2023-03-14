import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:json_annotation/json_annotation.dart';

part 'partner_club_slice.g.dart';

@JsonSerializable()
class PartnerClubSlice {
  const PartnerClubSlice({
    required this.count,
    this.next = '',
    this.previous = '',
    required this.results,
  });

  final int count;
  final String next;
  final String previous;
  final List<PartnerClub> results;

  factory PartnerClubSlice.fromJson(Map<String, dynamic> json) => _$PartnerClubSliceFromJson(json);
}
