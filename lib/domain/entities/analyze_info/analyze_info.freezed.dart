// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analyze_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnalyzeInfo _$AnalyzeInfoFromJson(Map<String, dynamic> json) {
  return _AnalyzeInfo.fromJson(json);
}

/// @nodoc
mixin _$AnalyzeInfo {
  @JsonKey(name: 'success_visits')
  int get successVisits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyzeInfoCopyWith<AnalyzeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyzeInfoCopyWith<$Res> {
  factory $AnalyzeInfoCopyWith(
          AnalyzeInfo value, $Res Function(AnalyzeInfo) then) =
      _$AnalyzeInfoCopyWithImpl<$Res, AnalyzeInfo>;
  @useResult
  $Res call({@JsonKey(name: 'success_visits') int successVisits});
}

/// @nodoc
class _$AnalyzeInfoCopyWithImpl<$Res, $Val extends AnalyzeInfo>
    implements $AnalyzeInfoCopyWith<$Res> {
  _$AnalyzeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successVisits = null,
  }) {
    return _then(_value.copyWith(
      successVisits: null == successVisits
          ? _value.successVisits
          : successVisits // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnalyzeInfoCopyWith<$Res>
    implements $AnalyzeInfoCopyWith<$Res> {
  factory _$$_AnalyzeInfoCopyWith(
          _$_AnalyzeInfo value, $Res Function(_$_AnalyzeInfo) then) =
      __$$_AnalyzeInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'success_visits') int successVisits});
}

/// @nodoc
class __$$_AnalyzeInfoCopyWithImpl<$Res>
    extends _$AnalyzeInfoCopyWithImpl<$Res, _$_AnalyzeInfo>
    implements _$$_AnalyzeInfoCopyWith<$Res> {
  __$$_AnalyzeInfoCopyWithImpl(
      _$_AnalyzeInfo _value, $Res Function(_$_AnalyzeInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successVisits = null,
  }) {
    return _then(_$_AnalyzeInfo(
      successVisits: null == successVisits
          ? _value.successVisits
          : successVisits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnalyzeInfo implements _AnalyzeInfo {
  const _$_AnalyzeInfo(
      {@JsonKey(name: 'success_visits') required this.successVisits});

  factory _$_AnalyzeInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AnalyzeInfoFromJson(json);

  @override
  @JsonKey(name: 'success_visits')
  final int successVisits;

  @override
  String toString() {
    return 'AnalyzeInfo(successVisits: $successVisits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyzeInfo &&
            (identical(other.successVisits, successVisits) ||
                other.successVisits == successVisits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, successVisits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyzeInfoCopyWith<_$_AnalyzeInfo> get copyWith =>
      __$$_AnalyzeInfoCopyWithImpl<_$_AnalyzeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnalyzeInfoToJson(
      this,
    );
  }
}

abstract class _AnalyzeInfo implements AnalyzeInfo {
  const factory _AnalyzeInfo(
          {@JsonKey(name: 'success_visits') required final int successVisits}) =
      _$_AnalyzeInfo;

  factory _AnalyzeInfo.fromJson(Map<String, dynamic> json) =
      _$_AnalyzeInfo.fromJson;

  @override
  @JsonKey(name: 'success_visits')
  int get successVisits;
  @override
  @JsonKey(ignore: true)
  _$$_AnalyzeInfoCopyWith<_$_AnalyzeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
