part of 'resource_cubit.dart';

@freezed
class ResourceState with _$ResourceState {
  const factory ResourceState.initial() = _ResourceStateInitial;
  const factory ResourceState.loaded({required ClubFilters filters}) = _ResourceStateLoaded;
  const factory ResourceState.error({required String error}) = _ResourceStateError;
}
