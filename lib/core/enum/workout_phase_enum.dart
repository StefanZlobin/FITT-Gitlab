import 'package:json_annotation/json_annotation.dart';

enum WorkoutPhaseEnum {
  @JsonValue('PLANNED')
  planned,
  @JsonValue('IN_PROCESS')
  inProcess,
  @JsonValue('DONE')
  done;

  String convertSortingToField(WorkoutPhaseEnum status) {
    switch (status) {
      case WorkoutPhaseEnum.planned:
        return 'PLANNED';
      case WorkoutPhaseEnum.inProcess:
        return 'IN_PROCESS';
      case WorkoutPhaseEnum.done:
        return 'DONE';
    }
  }
}
