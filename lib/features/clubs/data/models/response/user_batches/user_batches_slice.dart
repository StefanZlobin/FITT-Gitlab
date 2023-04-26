import 'package:fitt/features/clubs/domain/entities/batch/user_batch.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_batches_slice.g.dart';

@JsonSerializable()
class UserBatchesSlice {
  UserBatchesSlice({
    required this.count,
    this.next = '',
    this.previous = '',
    required this.results,
  });

  final int count;
  final String next;
  final String previous;
  final List<UserBatch> results;

  factory UserBatchesSlice.fromJson(Map<String, dynamic> json) =>
      _$UserBatchesSliceFromJson(json);
}
