import 'package:fitt/features/clubs/domain/entities/admin_club/admin_club.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_club_slice.g.dart';

@JsonSerializable()
class AdminClubSlice {
  AdminClubSlice({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });

  final int count;
  final List<AdminClub> results;
  final String? next;
  final String? previous;

  factory AdminClubSlice.fromJson(Map<String, dynamic> json) => _$AdminClubSliceFromJson(json);
  Map<String, dynamic> toJson() => _$AdminClubSliceToJson(this);
}
