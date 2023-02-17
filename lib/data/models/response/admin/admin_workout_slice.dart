import 'package:fitt/domain/entities/admin_workout/admin_workout.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_workout_slice.g.dart';

@JsonSerializable()
class AdminWorkoutSlice {
  AdminWorkoutSlice({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });

  final int count;
  final List<AdminWorkout> results;
  final String? next;
  final String? previous;

  factory AdminWorkoutSlice.fromJson(Map<String, dynamic> json) =>
      _$AdminWorkoutSliceFromJson(json);
  Map<String, dynamic> toJson() => _$AdminWorkoutSliceToJson(this);
}
