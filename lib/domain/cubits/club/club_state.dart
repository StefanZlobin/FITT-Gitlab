part of 'club_cubit.dart';

@Freezed(
  equal: false,
  copyWith: true,
  makeCollectionsUnmodifiable: false,
)
class ClubState with _$ClubState {
  const factory ClubState.loading() = _ClubStateLoading;
  const factory ClubState.loaded({
    required PartnerClub club,
    required bool lastAvailableDateSelected,
    Activity? selectedActivity,
    FilterGroup<bool, ToggledFilter<DateTime>>? dateSlots,
    FilterGroup<bool, ToggledFilter<DateTime>>? timeSlots,
    FilterGroup<bool, ToggledFilter<Duration>>? durationSlots,
    List<Batch>? batches,
  }) = _ClubStateLoaded;
  const factory ClubState.error({required String error}) = _ClubStateError;

  const ClubState._();
}

abstract class Filter<T, V> extends Equatable {
  const Filter(this.details, this.value) : assert(details != null);

  final T details;
  final V value;

  bool get isEnabled;
  bool get isNotEnabled => !isEnabled;

  Filter reset();

  Filter update(V value);
}

@immutable
class FilterGroup<V, T extends Filter<dynamic, V>> {
  const FilterGroup(
    this._children,
  );

  Map<Object, dynamic> toJson() => _children.map<Object, T>((key, value) => MapEntry(key.toString(), value));

  final Map<Object, T> _children;

  int get enabledCount => children.where((f) => f.isEnabled).length;
  bool get hasEnabledChildren => children.any((f) => f.isEnabled);
  List<T> get enabledChildren => children.where((f) => f.isEnabled).toList();
  List<T> get children => _children.values.toList();

  FilterGroup<V, T> update(Object key, V value) {
    assert(_children.containsKey(key));
    assert(value != null);
    final ch = Map<Object, T>.from(_children);
    ch[key] = ch[key]!.update(value) as T;
    return FilterGroup(ch);
  }

  FilterGroup<V, T> reset() {
    return FilterGroup(
      _children.map<Object, T>(
        (k, v) => MapEntry(k, v.reset() as T),
      ),
    );
  }

  @override
  String toString() => 'FilterGroup(children: $_children)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FilterGroup<V, T> && mapEquals(other._children, _children) && other.enabledCount == enabledCount;
  }

  @override
  int get hashCode {
    return Object.hashAll([
      _children,
    ]);
  }
}

class ToggledFilter<T> extends Filter<T, bool> {
  const ToggledFilter({
    required T details,
    bool value = false,
  }) : super(details, value);

  @override
  ToggledFilter<T> update(
    bool value,
  ) {
    return ToggledFilter<T>(
      details: details,
      value: value,
    );
  }

  @override
  ToggledFilter<T> reset() {
    return ToggledFilter(details: details);
  }

  @override
  bool get isEnabled => value;

  @override
  String toString() => 'ToggledFilter(details: $details, value: $value)';

  @override
  List<Object?> get props => [details, value];
}
