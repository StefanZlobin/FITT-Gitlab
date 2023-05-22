// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilters? filters, LatLng northeast,
            LatLng southwest, gm.LatLngBounds visibleRegion, double zoom)
        cameraMove,
    required TResult Function(ClubFilters filters) filtersDetected,
    required TResult Function(MapMarker marker) markerTapped,
    required TResult Function(String clubId) carouselCardFocused,
    required TResult Function(gm.GoogleMapController controller) mapCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult? Function(ClubFilters filters)? filtersDetected,
    TResult? Function(MapMarker marker)? markerTapped,
    TResult? Function(String clubId)? carouselCardFocused,
    TResult? Function(gm.GoogleMapController controller)? mapCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult Function(ClubFilters filters)? filtersDetected,
    TResult Function(MapMarker marker)? markerTapped,
    TResult Function(String clubId)? carouselCardFocused,
    TResult Function(gm.GoogleMapController controller)? mapCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapEventCameraMove value) cameraMove,
    required TResult Function(_MapEventFiltersDetected value) filtersDetected,
    required TResult Function(_MapEventMarkerTapped value) markerTapped,
    required TResult Function(_MapEventCarouselCardFocused value)
        carouselCardFocused,
    required TResult Function(_MapEventMapCreated value) mapCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapEventCameraMove value)? cameraMove,
    TResult? Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult? Function(_MapEventMarkerTapped value)? markerTapped,
    TResult? Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult? Function(_MapEventMapCreated value)? mapCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapEventCameraMove value)? cameraMove,
    TResult Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult Function(_MapEventMarkerTapped value)? markerTapped,
    TResult Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult Function(_MapEventMapCreated value)? mapCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res, MapEvent>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res, $Val extends MapEvent>
    implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MapEventCameraMoveCopyWith<$Res> {
  factory _$$_MapEventCameraMoveCopyWith(_$_MapEventCameraMove value,
          $Res Function(_$_MapEventCameraMove) then) =
      __$$_MapEventCameraMoveCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ClubFilters? filters,
      LatLng northeast,
      LatLng southwest,
      gm.LatLngBounds visibleRegion,
      double zoom});

  $ClubFiltersCopyWith<$Res>? get filters;
}

/// @nodoc
class __$$_MapEventCameraMoveCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_MapEventCameraMove>
    implements _$$_MapEventCameraMoveCopyWith<$Res> {
  __$$_MapEventCameraMoveCopyWithImpl(
      _$_MapEventCameraMove _value, $Res Function(_$_MapEventCameraMove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = freezed,
    Object? northeast = null,
    Object? southwest = null,
    Object? visibleRegion = null,
    Object? zoom = null,
  }) {
    return _then(_$_MapEventCameraMove(
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ClubFilters?,
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as LatLng,
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as LatLng,
      visibleRegion: null == visibleRegion
          ? _value.visibleRegion
          : visibleRegion // ignore: cast_nullable_to_non_nullable
              as gm.LatLngBounds,
      zoom: null == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubFiltersCopyWith<$Res>? get filters {
    if (_value.filters == null) {
      return null;
    }

    return $ClubFiltersCopyWith<$Res>(_value.filters!, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$_MapEventCameraMove implements _MapEventCameraMove {
  const _$_MapEventCameraMove(
      {this.filters,
      required this.northeast,
      required this.southwest,
      required this.visibleRegion,
      required this.zoom});

  @override
  final ClubFilters? filters;
  @override
  final LatLng northeast;
  @override
  final LatLng southwest;
  @override
  final gm.LatLngBounds visibleRegion;
  @override
  final double zoom;

  @override
  String toString() {
    return 'MapEvent.cameraMove(filters: $filters, northeast: $northeast, southwest: $southwest, visibleRegion: $visibleRegion, zoom: $zoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapEventCameraMove &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest) &&
            (identical(other.visibleRegion, visibleRegion) ||
                other.visibleRegion == visibleRegion) &&
            (identical(other.zoom, zoom) || other.zoom == zoom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, filters, northeast, southwest, visibleRegion, zoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapEventCameraMoveCopyWith<_$_MapEventCameraMove> get copyWith =>
      __$$_MapEventCameraMoveCopyWithImpl<_$_MapEventCameraMove>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilters? filters, LatLng northeast,
            LatLng southwest, gm.LatLngBounds visibleRegion, double zoom)
        cameraMove,
    required TResult Function(ClubFilters filters) filtersDetected,
    required TResult Function(MapMarker marker) markerTapped,
    required TResult Function(String clubId) carouselCardFocused,
    required TResult Function(gm.GoogleMapController controller) mapCreated,
  }) {
    return cameraMove(filters, northeast, southwest, visibleRegion, zoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult? Function(ClubFilters filters)? filtersDetected,
    TResult? Function(MapMarker marker)? markerTapped,
    TResult? Function(String clubId)? carouselCardFocused,
    TResult? Function(gm.GoogleMapController controller)? mapCreated,
  }) {
    return cameraMove?.call(filters, northeast, southwest, visibleRegion, zoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult Function(ClubFilters filters)? filtersDetected,
    TResult Function(MapMarker marker)? markerTapped,
    TResult Function(String clubId)? carouselCardFocused,
    TResult Function(gm.GoogleMapController controller)? mapCreated,
    required TResult orElse(),
  }) {
    if (cameraMove != null) {
      return cameraMove(filters, northeast, southwest, visibleRegion, zoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapEventCameraMove value) cameraMove,
    required TResult Function(_MapEventFiltersDetected value) filtersDetected,
    required TResult Function(_MapEventMarkerTapped value) markerTapped,
    required TResult Function(_MapEventCarouselCardFocused value)
        carouselCardFocused,
    required TResult Function(_MapEventMapCreated value) mapCreated,
  }) {
    return cameraMove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapEventCameraMove value)? cameraMove,
    TResult? Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult? Function(_MapEventMarkerTapped value)? markerTapped,
    TResult? Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult? Function(_MapEventMapCreated value)? mapCreated,
  }) {
    return cameraMove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapEventCameraMove value)? cameraMove,
    TResult Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult Function(_MapEventMarkerTapped value)? markerTapped,
    TResult Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult Function(_MapEventMapCreated value)? mapCreated,
    required TResult orElse(),
  }) {
    if (cameraMove != null) {
      return cameraMove(this);
    }
    return orElse();
  }
}

abstract class _MapEventCameraMove implements MapEvent {
  const factory _MapEventCameraMove(
      {final ClubFilters? filters,
      required final LatLng northeast,
      required final LatLng southwest,
      required final gm.LatLngBounds visibleRegion,
      required final double zoom}) = _$_MapEventCameraMove;

  ClubFilters? get filters;
  LatLng get northeast;
  LatLng get southwest;
  gm.LatLngBounds get visibleRegion;
  double get zoom;
  @JsonKey(ignore: true)
  _$$_MapEventCameraMoveCopyWith<_$_MapEventCameraMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MapEventFiltersDetectedCopyWith<$Res> {
  factory _$$_MapEventFiltersDetectedCopyWith(_$_MapEventFiltersDetected value,
          $Res Function(_$_MapEventFiltersDetected) then) =
      __$$_MapEventFiltersDetectedCopyWithImpl<$Res>;
  @useResult
  $Res call({ClubFilters filters});

  $ClubFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_MapEventFiltersDetectedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_MapEventFiltersDetected>
    implements _$$_MapEventFiltersDetectedCopyWith<$Res> {
  __$$_MapEventFiltersDetectedCopyWithImpl(_$_MapEventFiltersDetected _value,
      $Res Function(_$_MapEventFiltersDetected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$_MapEventFiltersDetected(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubFiltersCopyWith<$Res> get filters {
    return $ClubFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$_MapEventFiltersDetected implements _MapEventFiltersDetected {
  const _$_MapEventFiltersDetected({required this.filters});

  @override
  final ClubFilters filters;

  @override
  String toString() {
    return 'MapEvent.filtersDetected(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapEventFiltersDetected &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapEventFiltersDetectedCopyWith<_$_MapEventFiltersDetected>
      get copyWith =>
          __$$_MapEventFiltersDetectedCopyWithImpl<_$_MapEventFiltersDetected>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilters? filters, LatLng northeast,
            LatLng southwest, gm.LatLngBounds visibleRegion, double zoom)
        cameraMove,
    required TResult Function(ClubFilters filters) filtersDetected,
    required TResult Function(MapMarker marker) markerTapped,
    required TResult Function(String clubId) carouselCardFocused,
    required TResult Function(gm.GoogleMapController controller) mapCreated,
  }) {
    return filtersDetected(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult? Function(ClubFilters filters)? filtersDetected,
    TResult? Function(MapMarker marker)? markerTapped,
    TResult? Function(String clubId)? carouselCardFocused,
    TResult? Function(gm.GoogleMapController controller)? mapCreated,
  }) {
    return filtersDetected?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult Function(ClubFilters filters)? filtersDetected,
    TResult Function(MapMarker marker)? markerTapped,
    TResult Function(String clubId)? carouselCardFocused,
    TResult Function(gm.GoogleMapController controller)? mapCreated,
    required TResult orElse(),
  }) {
    if (filtersDetected != null) {
      return filtersDetected(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapEventCameraMove value) cameraMove,
    required TResult Function(_MapEventFiltersDetected value) filtersDetected,
    required TResult Function(_MapEventMarkerTapped value) markerTapped,
    required TResult Function(_MapEventCarouselCardFocused value)
        carouselCardFocused,
    required TResult Function(_MapEventMapCreated value) mapCreated,
  }) {
    return filtersDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapEventCameraMove value)? cameraMove,
    TResult? Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult? Function(_MapEventMarkerTapped value)? markerTapped,
    TResult? Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult? Function(_MapEventMapCreated value)? mapCreated,
  }) {
    return filtersDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapEventCameraMove value)? cameraMove,
    TResult Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult Function(_MapEventMarkerTapped value)? markerTapped,
    TResult Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult Function(_MapEventMapCreated value)? mapCreated,
    required TResult orElse(),
  }) {
    if (filtersDetected != null) {
      return filtersDetected(this);
    }
    return orElse();
  }
}

abstract class _MapEventFiltersDetected implements MapEvent {
  const factory _MapEventFiltersDetected({required final ClubFilters filters}) =
      _$_MapEventFiltersDetected;

  ClubFilters get filters;
  @JsonKey(ignore: true)
  _$$_MapEventFiltersDetectedCopyWith<_$_MapEventFiltersDetected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MapEventMarkerTappedCopyWith<$Res> {
  factory _$$_MapEventMarkerTappedCopyWith(_$_MapEventMarkerTapped value,
          $Res Function(_$_MapEventMarkerTapped) then) =
      __$$_MapEventMarkerTappedCopyWithImpl<$Res>;
  @useResult
  $Res call({MapMarker marker});

  $MapMarkerCopyWith<$Res> get marker;
}

/// @nodoc
class __$$_MapEventMarkerTappedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_MapEventMarkerTapped>
    implements _$$_MapEventMarkerTappedCopyWith<$Res> {
  __$$_MapEventMarkerTappedCopyWithImpl(_$_MapEventMarkerTapped _value,
      $Res Function(_$_MapEventMarkerTapped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marker = null,
  }) {
    return _then(_$_MapEventMarkerTapped(
      null == marker
          ? _value.marker
          : marker // ignore: cast_nullable_to_non_nullable
              as MapMarker,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MapMarkerCopyWith<$Res> get marker {
    return $MapMarkerCopyWith<$Res>(_value.marker, (value) {
      return _then(_value.copyWith(marker: value));
    });
  }
}

/// @nodoc

class _$_MapEventMarkerTapped implements _MapEventMarkerTapped {
  const _$_MapEventMarkerTapped(this.marker);

  @override
  final MapMarker marker;

  @override
  String toString() {
    return 'MapEvent.markerTapped(marker: $marker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapEventMarkerTapped &&
            (identical(other.marker, marker) || other.marker == marker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, marker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapEventMarkerTappedCopyWith<_$_MapEventMarkerTapped> get copyWith =>
      __$$_MapEventMarkerTappedCopyWithImpl<_$_MapEventMarkerTapped>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilters? filters, LatLng northeast,
            LatLng southwest, gm.LatLngBounds visibleRegion, double zoom)
        cameraMove,
    required TResult Function(ClubFilters filters) filtersDetected,
    required TResult Function(MapMarker marker) markerTapped,
    required TResult Function(String clubId) carouselCardFocused,
    required TResult Function(gm.GoogleMapController controller) mapCreated,
  }) {
    return markerTapped(marker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult? Function(ClubFilters filters)? filtersDetected,
    TResult? Function(MapMarker marker)? markerTapped,
    TResult? Function(String clubId)? carouselCardFocused,
    TResult? Function(gm.GoogleMapController controller)? mapCreated,
  }) {
    return markerTapped?.call(marker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult Function(ClubFilters filters)? filtersDetected,
    TResult Function(MapMarker marker)? markerTapped,
    TResult Function(String clubId)? carouselCardFocused,
    TResult Function(gm.GoogleMapController controller)? mapCreated,
    required TResult orElse(),
  }) {
    if (markerTapped != null) {
      return markerTapped(marker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapEventCameraMove value) cameraMove,
    required TResult Function(_MapEventFiltersDetected value) filtersDetected,
    required TResult Function(_MapEventMarkerTapped value) markerTapped,
    required TResult Function(_MapEventCarouselCardFocused value)
        carouselCardFocused,
    required TResult Function(_MapEventMapCreated value) mapCreated,
  }) {
    return markerTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapEventCameraMove value)? cameraMove,
    TResult? Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult? Function(_MapEventMarkerTapped value)? markerTapped,
    TResult? Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult? Function(_MapEventMapCreated value)? mapCreated,
  }) {
    return markerTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapEventCameraMove value)? cameraMove,
    TResult Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult Function(_MapEventMarkerTapped value)? markerTapped,
    TResult Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult Function(_MapEventMapCreated value)? mapCreated,
    required TResult orElse(),
  }) {
    if (markerTapped != null) {
      return markerTapped(this);
    }
    return orElse();
  }
}

abstract class _MapEventMarkerTapped implements MapEvent {
  const factory _MapEventMarkerTapped(final MapMarker marker) =
      _$_MapEventMarkerTapped;

  MapMarker get marker;
  @JsonKey(ignore: true)
  _$$_MapEventMarkerTappedCopyWith<_$_MapEventMarkerTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MapEventCarouselCardFocusedCopyWith<$Res> {
  factory _$$_MapEventCarouselCardFocusedCopyWith(
          _$_MapEventCarouselCardFocused value,
          $Res Function(_$_MapEventCarouselCardFocused) then) =
      __$$_MapEventCarouselCardFocusedCopyWithImpl<$Res>;
  @useResult
  $Res call({String clubId});
}

/// @nodoc
class __$$_MapEventCarouselCardFocusedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_MapEventCarouselCardFocused>
    implements _$$_MapEventCarouselCardFocusedCopyWith<$Res> {
  __$$_MapEventCarouselCardFocusedCopyWithImpl(
      _$_MapEventCarouselCardFocused _value,
      $Res Function(_$_MapEventCarouselCardFocused) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$_MapEventCarouselCardFocused(
      null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MapEventCarouselCardFocused implements _MapEventCarouselCardFocused {
  const _$_MapEventCarouselCardFocused(this.clubId);

  @override
  final String clubId;

  @override
  String toString() {
    return 'MapEvent.carouselCardFocused(clubId: $clubId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapEventCarouselCardFocused &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapEventCarouselCardFocusedCopyWith<_$_MapEventCarouselCardFocused>
      get copyWith => __$$_MapEventCarouselCardFocusedCopyWithImpl<
          _$_MapEventCarouselCardFocused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilters? filters, LatLng northeast,
            LatLng southwest, gm.LatLngBounds visibleRegion, double zoom)
        cameraMove,
    required TResult Function(ClubFilters filters) filtersDetected,
    required TResult Function(MapMarker marker) markerTapped,
    required TResult Function(String clubId) carouselCardFocused,
    required TResult Function(gm.GoogleMapController controller) mapCreated,
  }) {
    return carouselCardFocused(clubId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult? Function(ClubFilters filters)? filtersDetected,
    TResult? Function(MapMarker marker)? markerTapped,
    TResult? Function(String clubId)? carouselCardFocused,
    TResult? Function(gm.GoogleMapController controller)? mapCreated,
  }) {
    return carouselCardFocused?.call(clubId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult Function(ClubFilters filters)? filtersDetected,
    TResult Function(MapMarker marker)? markerTapped,
    TResult Function(String clubId)? carouselCardFocused,
    TResult Function(gm.GoogleMapController controller)? mapCreated,
    required TResult orElse(),
  }) {
    if (carouselCardFocused != null) {
      return carouselCardFocused(clubId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapEventCameraMove value) cameraMove,
    required TResult Function(_MapEventFiltersDetected value) filtersDetected,
    required TResult Function(_MapEventMarkerTapped value) markerTapped,
    required TResult Function(_MapEventCarouselCardFocused value)
        carouselCardFocused,
    required TResult Function(_MapEventMapCreated value) mapCreated,
  }) {
    return carouselCardFocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapEventCameraMove value)? cameraMove,
    TResult? Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult? Function(_MapEventMarkerTapped value)? markerTapped,
    TResult? Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult? Function(_MapEventMapCreated value)? mapCreated,
  }) {
    return carouselCardFocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapEventCameraMove value)? cameraMove,
    TResult Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult Function(_MapEventMarkerTapped value)? markerTapped,
    TResult Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult Function(_MapEventMapCreated value)? mapCreated,
    required TResult orElse(),
  }) {
    if (carouselCardFocused != null) {
      return carouselCardFocused(this);
    }
    return orElse();
  }
}

abstract class _MapEventCarouselCardFocused implements MapEvent {
  const factory _MapEventCarouselCardFocused(final String clubId) =
      _$_MapEventCarouselCardFocused;

  String get clubId;
  @JsonKey(ignore: true)
  _$$_MapEventCarouselCardFocusedCopyWith<_$_MapEventCarouselCardFocused>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MapEventMapCreatedCopyWith<$Res> {
  factory _$$_MapEventMapCreatedCopyWith(_$_MapEventMapCreated value,
          $Res Function(_$_MapEventMapCreated) then) =
      __$$_MapEventMapCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({gm.GoogleMapController controller});
}

/// @nodoc
class __$$_MapEventMapCreatedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_MapEventMapCreated>
    implements _$$_MapEventMapCreatedCopyWith<$Res> {
  __$$_MapEventMapCreatedCopyWithImpl(
      _$_MapEventMapCreated _value, $Res Function(_$_MapEventMapCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$_MapEventMapCreated(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as gm.GoogleMapController,
    ));
  }
}

/// @nodoc

class _$_MapEventMapCreated implements _MapEventMapCreated {
  const _$_MapEventMapCreated(this.controller);

  @override
  final gm.GoogleMapController controller;

  @override
  String toString() {
    return 'MapEvent.mapCreated(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapEventMapCreated &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapEventMapCreatedCopyWith<_$_MapEventMapCreated> get copyWith =>
      __$$_MapEventMapCreatedCopyWithImpl<_$_MapEventMapCreated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilters? filters, LatLng northeast,
            LatLng southwest, gm.LatLngBounds visibleRegion, double zoom)
        cameraMove,
    required TResult Function(ClubFilters filters) filtersDetected,
    required TResult Function(MapMarker marker) markerTapped,
    required TResult Function(String clubId) carouselCardFocused,
    required TResult Function(gm.GoogleMapController controller) mapCreated,
  }) {
    return mapCreated(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult? Function(ClubFilters filters)? filtersDetected,
    TResult? Function(MapMarker marker)? markerTapped,
    TResult? Function(String clubId)? carouselCardFocused,
    TResult? Function(gm.GoogleMapController controller)? mapCreated,
  }) {
    return mapCreated?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilters? filters, LatLng northeast, LatLng southwest,
            gm.LatLngBounds visibleRegion, double zoom)?
        cameraMove,
    TResult Function(ClubFilters filters)? filtersDetected,
    TResult Function(MapMarker marker)? markerTapped,
    TResult Function(String clubId)? carouselCardFocused,
    TResult Function(gm.GoogleMapController controller)? mapCreated,
    required TResult orElse(),
  }) {
    if (mapCreated != null) {
      return mapCreated(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapEventCameraMove value) cameraMove,
    required TResult Function(_MapEventFiltersDetected value) filtersDetected,
    required TResult Function(_MapEventMarkerTapped value) markerTapped,
    required TResult Function(_MapEventCarouselCardFocused value)
        carouselCardFocused,
    required TResult Function(_MapEventMapCreated value) mapCreated,
  }) {
    return mapCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapEventCameraMove value)? cameraMove,
    TResult? Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult? Function(_MapEventMarkerTapped value)? markerTapped,
    TResult? Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult? Function(_MapEventMapCreated value)? mapCreated,
  }) {
    return mapCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapEventCameraMove value)? cameraMove,
    TResult Function(_MapEventFiltersDetected value)? filtersDetected,
    TResult Function(_MapEventMarkerTapped value)? markerTapped,
    TResult Function(_MapEventCarouselCardFocused value)? carouselCardFocused,
    TResult Function(_MapEventMapCreated value)? mapCreated,
    required TResult orElse(),
  }) {
    if (mapCreated != null) {
      return mapCreated(this);
    }
    return orElse();
  }
}

abstract class _MapEventMapCreated implements MapEvent {
  const factory _MapEventMapCreated(final gm.GoogleMapController controller) =
      _$_MapEventMapCreated;

  gm.GoogleMapController get controller;
  @JsonKey(ignore: true)
  _$$_MapEventMapCreatedCopyWith<_$_MapEventMapCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateInitial value) initial,
    required TResult Function(_MapStateLoading value) loading,
    required TResult Function(_MapStateLoaded value) loaded,
    required TResult Function(_MapStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateInitial value)? initial,
    TResult? Function(_MapStateLoading value)? loading,
    TResult? Function(_MapStateLoaded value)? loaded,
    TResult? Function(_MapStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateInitial value)? initial,
    TResult Function(_MapStateLoading value)? loading,
    TResult Function(_MapStateLoaded value)? loaded,
    TResult Function(_MapStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MapStateInitialCopyWith<$Res> {
  factory _$$_MapStateInitialCopyWith(
          _$_MapStateInitial value, $Res Function(_$_MapStateInitial) then) =
      __$$_MapStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MapStateInitialCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_MapStateInitial>
    implements _$$_MapStateInitialCopyWith<$Res> {
  __$$_MapStateInitialCopyWithImpl(
      _$_MapStateInitial _value, $Res Function(_$_MapStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MapStateInitial implements _MapStateInitial {
  const _$_MapStateInitial();

  @override
  String toString() {
    return 'MapState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)
        loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)?
        loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateInitial value) initial,
    required TResult Function(_MapStateLoading value) loading,
    required TResult Function(_MapStateLoaded value) loaded,
    required TResult Function(_MapStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateInitial value)? initial,
    TResult? Function(_MapStateLoading value)? loading,
    TResult? Function(_MapStateLoaded value)? loaded,
    TResult? Function(_MapStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateInitial value)? initial,
    TResult Function(_MapStateLoading value)? loading,
    TResult Function(_MapStateLoaded value)? loaded,
    TResult Function(_MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MapStateInitial implements MapState {
  const factory _MapStateInitial() = _$_MapStateInitial;
}

/// @nodoc
abstract class _$$_MapStateLoadingCopyWith<$Res> {
  factory _$$_MapStateLoadingCopyWith(
          _$_MapStateLoading value, $Res Function(_$_MapStateLoading) then) =
      __$$_MapStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MapStateLoadingCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_MapStateLoading>
    implements _$$_MapStateLoadingCopyWith<$Res> {
  __$$_MapStateLoadingCopyWithImpl(
      _$_MapStateLoading _value, $Res Function(_$_MapStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MapStateLoading implements _MapStateLoading {
  const _$_MapStateLoading();

  @override
  String toString() {
    return 'MapState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)?
        loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateInitial value) initial,
    required TResult Function(_MapStateLoading value) loading,
    required TResult Function(_MapStateLoaded value) loaded,
    required TResult Function(_MapStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateInitial value)? initial,
    TResult? Function(_MapStateLoading value)? loading,
    TResult? Function(_MapStateLoaded value)? loaded,
    TResult? Function(_MapStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateInitial value)? initial,
    TResult Function(_MapStateLoading value)? loading,
    TResult Function(_MapStateLoaded value)? loaded,
    TResult Function(_MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MapStateLoading implements MapState {
  const factory _MapStateLoading() = _$_MapStateLoading;
}

/// @nodoc
abstract class _$$_MapStateLoadedCopyWith<$Res> {
  factory _$$_MapStateLoadedCopyWith(
          _$_MapStateLoaded value, $Res Function(_$_MapStateLoaded) then) =
      __$$_MapStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MapPoint> mapPoints,
      gm.LatLngBounds visibleRegion,
      List<MapMarker> markers,
      ClubFilters filters,
      bool isVisibleRegionUpdated});

  $ClubFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_MapStateLoadedCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_MapStateLoaded>
    implements _$$_MapStateLoadedCopyWith<$Res> {
  __$$_MapStateLoadedCopyWithImpl(
      _$_MapStateLoaded _value, $Res Function(_$_MapStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapPoints = null,
    Object? visibleRegion = null,
    Object? markers = null,
    Object? filters = null,
    Object? isVisibleRegionUpdated = null,
  }) {
    return _then(_$_MapStateLoaded(
      mapPoints: null == mapPoints
          ? _value._mapPoints
          : mapPoints // ignore: cast_nullable_to_non_nullable
              as List<MapPoint>,
      visibleRegion: null == visibleRegion
          ? _value.visibleRegion
          : visibleRegion // ignore: cast_nullable_to_non_nullable
              as gm.LatLngBounds,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<MapMarker>,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
      isVisibleRegionUpdated: null == isVisibleRegionUpdated
          ? _value.isVisibleRegionUpdated
          : isVisibleRegionUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubFiltersCopyWith<$Res> get filters {
    return $ClubFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$_MapStateLoaded implements _MapStateLoaded {
  const _$_MapStateLoaded(
      {required final List<MapPoint> mapPoints,
      required this.visibleRegion,
      required final List<MapMarker> markers,
      required this.filters,
      required this.isVisibleRegionUpdated})
      : _mapPoints = mapPoints,
        _markers = markers;

  final List<MapPoint> _mapPoints;
  @override
  List<MapPoint> get mapPoints {
    if (_mapPoints is EqualUnmodifiableListView) return _mapPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mapPoints);
  }

  @override
  final gm.LatLngBounds visibleRegion;
  final List<MapMarker> _markers;
  @override
  List<MapMarker> get markers {
    if (_markers is EqualUnmodifiableListView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markers);
  }

  @override
  final ClubFilters filters;
  @override
  final bool isVisibleRegionUpdated;

  @override
  String toString() {
    return 'MapState.loaded(mapPoints: $mapPoints, visibleRegion: $visibleRegion, markers: $markers, filters: $filters, isVisibleRegionUpdated: $isVisibleRegionUpdated)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapStateLoadedCopyWith<_$_MapStateLoaded> get copyWith =>
      __$$_MapStateLoadedCopyWithImpl<_$_MapStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(
        mapPoints, visibleRegion, markers, filters, isVisibleRegionUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(
        mapPoints, visibleRegion, markers, filters, isVisibleRegionUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          mapPoints, visibleRegion, markers, filters, isVisibleRegionUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateInitial value) initial,
    required TResult Function(_MapStateLoading value) loading,
    required TResult Function(_MapStateLoaded value) loaded,
    required TResult Function(_MapStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateInitial value)? initial,
    TResult? Function(_MapStateLoading value)? loading,
    TResult? Function(_MapStateLoaded value)? loaded,
    TResult? Function(_MapStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateInitial value)? initial,
    TResult Function(_MapStateLoading value)? loading,
    TResult Function(_MapStateLoaded value)? loaded,
    TResult Function(_MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _MapStateLoaded implements MapState {
  const factory _MapStateLoaded(
      {required final List<MapPoint> mapPoints,
      required final gm.LatLngBounds visibleRegion,
      required final List<MapMarker> markers,
      required final ClubFilters filters,
      required final bool isVisibleRegionUpdated}) = _$_MapStateLoaded;

  List<MapPoint> get mapPoints;
  gm.LatLngBounds get visibleRegion;
  List<MapMarker> get markers;
  ClubFilters get filters;
  bool get isVisibleRegionUpdated;
  @JsonKey(ignore: true)
  _$$_MapStateLoadedCopyWith<_$_MapStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MapStateErrorCopyWith<$Res> {
  factory _$$_MapStateErrorCopyWith(
          _$_MapStateError value, $Res Function(_$_MapStateError) then) =
      __$$_MapStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MapStateErrorCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_MapStateError>
    implements _$$_MapStateErrorCopyWith<$Res> {
  __$$_MapStateErrorCopyWithImpl(
      _$_MapStateError _value, $Res Function(_$_MapStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MapStateError implements _MapStateError {
  const _$_MapStateError();

  @override
  String toString() {
    return 'MapState.error()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<MapPoint> mapPoints,
            gm.LatLngBounds visibleRegion,
            List<MapMarker> markers,
            ClubFilters filters,
            bool isVisibleRegionUpdated)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapStateInitial value) initial,
    required TResult Function(_MapStateLoading value) loading,
    required TResult Function(_MapStateLoaded value) loaded,
    required TResult Function(_MapStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MapStateInitial value)? initial,
    TResult? Function(_MapStateLoading value)? loading,
    TResult? Function(_MapStateLoaded value)? loaded,
    TResult? Function(_MapStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapStateInitial value)? initial,
    TResult Function(_MapStateLoading value)? loading,
    TResult Function(_MapStateLoaded value)? loaded,
    TResult Function(_MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MapStateError implements MapState {
  const factory _MapStateError() = _$_MapStateError;
}
