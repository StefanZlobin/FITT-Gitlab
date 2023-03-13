// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
mixin _$Document {
  @JsonKey(name: 'name')
  String get documentLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get fileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentCopyWith<Document> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) = _$DocumentCopyWithImpl<$Res, Document>;
  @useResult
  $Res call({@JsonKey(name: 'name') String documentLabel, @JsonKey(name: 'url') String fileUrl});
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res, $Val extends Document> implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentLabel = null,
    Object? fileUrl = null,
  }) {
    return _then(_value.copyWith(
      documentLabel: null == documentLabel
          ? _value.documentLabel
          : documentLabel // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentCopyWith<$Res> implements $DocumentCopyWith<$Res> {
  factory _$$_DocumentCopyWith(_$_Document value, $Res Function(_$_Document) then) = __$$_DocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String documentLabel, @JsonKey(name: 'url') String fileUrl});
}

/// @nodoc
class __$$_DocumentCopyWithImpl<$Res> extends _$DocumentCopyWithImpl<$Res, _$_Document>
    implements _$$_DocumentCopyWith<$Res> {
  __$$_DocumentCopyWithImpl(_$_Document _value, $Res Function(_$_Document) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentLabel = null,
    Object? fileUrl = null,
  }) {
    return _then(_$_Document(
      documentLabel: null == documentLabel
          ? _value.documentLabel
          : documentLabel // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Document implements _Document {
  _$_Document({@JsonKey(name: 'name') required this.documentLabel, @JsonKey(name: 'url') required this.fileUrl});

  factory _$_Document.fromJson(Map<String, dynamic> json) => _$$_DocumentFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String documentLabel;
  @override
  @JsonKey(name: 'url')
  final String fileUrl;

  @override
  String toString() {
    return 'Document(documentLabel: $documentLabel, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Document &&
            (identical(other.documentLabel, documentLabel) || other.documentLabel == documentLabel) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, documentLabel, fileUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentCopyWith<_$_Document> get copyWith => __$$_DocumentCopyWithImpl<_$_Document>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentToJson(
      this,
    );
  }
}

abstract class _Document implements Document {
  factory _Document(
      {@JsonKey(name: 'name') required final String documentLabel,
      @JsonKey(name: 'url') required final String fileUrl}) = _$_Document;

  factory _Document.fromJson(Map<String, dynamic> json) = _$_Document.fromJson;

  @override
  @JsonKey(name: 'name')
  String get documentLabel;
  @override
  @JsonKey(name: 'url')
  String get fileUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentCopyWith<_$_Document> get copyWith => throw _privateConstructorUsedError;
}
