// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_club.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PartnerClub _$PartnerClubFromJson(Map<String, dynamic> json) {
  return _PartnerClub.fromJson(json);
}

/// @nodoc
mixin _$PartnerClub {
  @JsonKey(name: 'id')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_price', fromJson: toRublesNullable)
  int? get minPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance')
  double? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  Rating? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'photos')
  List<Photo>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'facilities')
  List<Facility>? get facilities => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_hours_available')
  double? get batchHoursAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  bool? get isFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_schedule')
  List<WorkSchedule>? get workSchedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'activities')
  List<Activity>? get activities => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization')
  Organization? get organization => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents')
  List<Document>? get documents => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  String? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_available')
  bool? get payAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerClubCopyWith<PartnerClub> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerClubCopyWith<$Res> {
  factory $PartnerClubCopyWith(
          PartnerClub value, $Res Function(PartnerClub) then) =
      _$PartnerClubCopyWithImpl<$Res, PartnerClub>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? uuid,
      @JsonKey(name: 'min_price', fromJson: toRublesNullable) int? minPrice,
      @JsonKey(name: 'address') Address? address,
      @JsonKey(name: 'distance') double? distance,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'rating') Rating? rating,
      @JsonKey(name: 'photos') List<Photo>? photos,
      @JsonKey(name: 'facilities') List<Facility>? facilities,
      @JsonKey(name: 'batch_hours_available') double? batchHoursAvailable,
      @JsonKey(name: 'is_favorite') bool? isFavorite,
      @JsonKey(name: 'work_schedule') List<WorkSchedule>? workSchedule,
      @JsonKey(name: 'activities') List<Activity>? activities,
      @JsonKey(name: 'organization') Organization? organization,
      @JsonKey(name: 'documents') List<Document>? documents,
      @JsonKey(name: 'timezone') String? timezone,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phoneNumber,
      @JsonKey(name: 'pay_available') bool? payAvailable});

  $AddressCopyWith<$Res>? get address;
  $RatingCopyWith<$Res>? get rating;
  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class _$PartnerClubCopyWithImpl<$Res, $Val extends PartnerClub>
    implements $PartnerClubCopyWith<$Res> {
  _$PartnerClubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? minPrice = freezed,
    Object? address = freezed,
    Object? distance = freezed,
    Object? label = freezed,
    Object? rating = freezed,
    Object? photos = freezed,
    Object? facilities = freezed,
    Object? batchHoursAvailable = freezed,
    Object? isFavorite = freezed,
    Object? workSchedule = freezed,
    Object? activities = freezed,
    Object? organization = freezed,
    Object? documents = freezed,
    Object? timezone = freezed,
    Object? description = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? payAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      facilities: freezed == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
      batchHoursAvailable: freezed == batchHoursAvailable
          ? _value.batchHoursAvailable
          : batchHoursAvailable // ignore: cast_nullable_to_non_nullable
              as double?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      workSchedule: freezed == workSchedule
          ? _value.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as List<WorkSchedule>?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      payAvailable: freezed == payAvailable
          ? _value.payAvailable
          : payAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $OrganizationCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PartnerClubCopyWith<$Res>
    implements $PartnerClubCopyWith<$Res> {
  factory _$$_PartnerClubCopyWith(
          _$_PartnerClub value, $Res Function(_$_PartnerClub) then) =
      __$$_PartnerClubCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? uuid,
      @JsonKey(name: 'min_price', fromJson: toRublesNullable) int? minPrice,
      @JsonKey(name: 'address') Address? address,
      @JsonKey(name: 'distance') double? distance,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'rating') Rating? rating,
      @JsonKey(name: 'photos') List<Photo>? photos,
      @JsonKey(name: 'facilities') List<Facility>? facilities,
      @JsonKey(name: 'batch_hours_available') double? batchHoursAvailable,
      @JsonKey(name: 'is_favorite') bool? isFavorite,
      @JsonKey(name: 'work_schedule') List<WorkSchedule>? workSchedule,
      @JsonKey(name: 'activities') List<Activity>? activities,
      @JsonKey(name: 'organization') Organization? organization,
      @JsonKey(name: 'documents') List<Document>? documents,
      @JsonKey(name: 'timezone') String? timezone,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phoneNumber,
      @JsonKey(name: 'pay_available') bool? payAvailable});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $RatingCopyWith<$Res>? get rating;
  @override
  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class __$$_PartnerClubCopyWithImpl<$Res>
    extends _$PartnerClubCopyWithImpl<$Res, _$_PartnerClub>
    implements _$$_PartnerClubCopyWith<$Res> {
  __$$_PartnerClubCopyWithImpl(
      _$_PartnerClub _value, $Res Function(_$_PartnerClub) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? minPrice = freezed,
    Object? address = freezed,
    Object? distance = freezed,
    Object? label = freezed,
    Object? rating = freezed,
    Object? photos = freezed,
    Object? facilities = freezed,
    Object? batchHoursAvailable = freezed,
    Object? isFavorite = freezed,
    Object? workSchedule = freezed,
    Object? activities = freezed,
    Object? organization = freezed,
    Object? documents = freezed,
    Object? timezone = freezed,
    Object? description = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? payAvailable = freezed,
  }) {
    return _then(_$_PartnerClub(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      facilities: freezed == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
      batchHoursAvailable: freezed == batchHoursAvailable
          ? _value.batchHoursAvailable
          : batchHoursAvailable // ignore: cast_nullable_to_non_nullable
              as double?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      workSchedule: freezed == workSchedule
          ? _value._workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as List<WorkSchedule>?,
      activities: freezed == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      payAvailable: freezed == payAvailable
          ? _value.payAvailable
          : payAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartnerClub implements _PartnerClub {
  const _$_PartnerClub(
      {@JsonKey(name: 'id')
          required this.uuid,
      @JsonKey(name: 'min_price', fromJson: toRublesNullable)
          required this.minPrice,
      @JsonKey(name: 'address')
          required this.address,
      @JsonKey(name: 'distance')
          required this.distance,
      @JsonKey(name: 'label')
          required this.label,
      @JsonKey(name: 'rating')
          required this.rating,
      @JsonKey(name: 'photos')
          required final List<Photo>? photos,
      @JsonKey(name: 'facilities')
          required final List<Facility>? facilities,
      @JsonKey(name: 'batch_hours_available')
          required this.batchHoursAvailable,
      @JsonKey(name: 'is_favorite')
          required this.isFavorite,
      @JsonKey(name: 'work_schedule')
          required final List<WorkSchedule>? workSchedule,
      @JsonKey(name: 'activities')
          required final List<Activity>? activities,
      @JsonKey(name: 'organization')
          required this.organization,
      @JsonKey(name: 'documents')
          required final List<Document>? documents,
      @JsonKey(name: 'timezone')
          required this.timezone,
      @JsonKey(name: 'description')
          required this.description,
      @JsonKey(name: 'email')
          required this.email,
      @JsonKey(name: 'phone')
          required this.phoneNumber,
      @JsonKey(name: 'pay_available')
          required this.payAvailable})
      : _photos = photos,
        _facilities = facilities,
        _workSchedule = workSchedule,
        _activities = activities,
        _documents = documents;

  factory _$_PartnerClub.fromJson(Map<String, dynamic> json) =>
      _$$_PartnerClubFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? uuid;
  @override
  @JsonKey(name: 'min_price', fromJson: toRublesNullable)
  final int? minPrice;
  @override
  @JsonKey(name: 'address')
  final Address? address;
  @override
  @JsonKey(name: 'distance')
  final double? distance;
  @override
  @JsonKey(name: 'label')
  final String? label;
  @override
  @JsonKey(name: 'rating')
  final Rating? rating;
  final List<Photo>? _photos;
  @override
  @JsonKey(name: 'photos')
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Facility>? _facilities;
  @override
  @JsonKey(name: 'facilities')
  List<Facility>? get facilities {
    final value = _facilities;
    if (value == null) return null;
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'batch_hours_available')
  final double? batchHoursAvailable;
  @override
  @JsonKey(name: 'is_favorite')
  final bool? isFavorite;
  final List<WorkSchedule>? _workSchedule;
  @override
  @JsonKey(name: 'work_schedule')
  List<WorkSchedule>? get workSchedule {
    final value = _workSchedule;
    if (value == null) return null;
    if (_workSchedule is EqualUnmodifiableListView) return _workSchedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Activity>? _activities;
  @override
  @JsonKey(name: 'activities')
  List<Activity>? get activities {
    final value = _activities;
    if (value == null) return null;
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'organization')
  final Organization? organization;
  final List<Document>? _documents;
  @override
  @JsonKey(name: 'documents')
  List<Document>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'timezone')
  final String? timezone;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'pay_available')
  final bool? payAvailable;

  @override
  String toString() {
    return 'PartnerClub(uuid: $uuid, minPrice: $minPrice, address: $address, distance: $distance, label: $label, rating: $rating, photos: $photos, facilities: $facilities, batchHoursAvailable: $batchHoursAvailable, isFavorite: $isFavorite, workSchedule: $workSchedule, activities: $activities, organization: $organization, documents: $documents, timezone: $timezone, description: $description, email: $email, phoneNumber: $phoneNumber, payAvailable: $payAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartnerClub &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            (identical(other.batchHoursAvailable, batchHoursAvailable) ||
                other.batchHoursAvailable == batchHoursAvailable) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality()
                .equals(other._workSchedule, _workSchedule) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.payAvailable, payAvailable) ||
                other.payAvailable == payAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uuid,
        minPrice,
        address,
        distance,
        label,
        rating,
        const DeepCollectionEquality().hash(_photos),
        const DeepCollectionEquality().hash(_facilities),
        batchHoursAvailable,
        isFavorite,
        const DeepCollectionEquality().hash(_workSchedule),
        const DeepCollectionEquality().hash(_activities),
        organization,
        const DeepCollectionEquality().hash(_documents),
        timezone,
        description,
        email,
        phoneNumber,
        payAvailable
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartnerClubCopyWith<_$_PartnerClub> get copyWith =>
      __$$_PartnerClubCopyWithImpl<_$_PartnerClub>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerClubToJson(
      this,
    );
  }
}

abstract class _PartnerClub implements PartnerClub {
  const factory _PartnerClub(
      {@JsonKey(name: 'id')
          required final String? uuid,
      @JsonKey(name: 'min_price', fromJson: toRublesNullable)
          required final int? minPrice,
      @JsonKey(name: 'address')
          required final Address? address,
      @JsonKey(name: 'distance')
          required final double? distance,
      @JsonKey(name: 'label')
          required final String? label,
      @JsonKey(name: 'rating')
          required final Rating? rating,
      @JsonKey(name: 'photos')
          required final List<Photo>? photos,
      @JsonKey(name: 'facilities')
          required final List<Facility>? facilities,
      @JsonKey(name: 'batch_hours_available')
          required final double? batchHoursAvailable,
      @JsonKey(name: 'is_favorite')
          required final bool? isFavorite,
      @JsonKey(name: 'work_schedule')
          required final List<WorkSchedule>? workSchedule,
      @JsonKey(name: 'activities')
          required final List<Activity>? activities,
      @JsonKey(name: 'organization')
          required final Organization? organization,
      @JsonKey(name: 'documents')
          required final List<Document>? documents,
      @JsonKey(name: 'timezone')
          required final String? timezone,
      @JsonKey(name: 'description')
          required final String? description,
      @JsonKey(name: 'email')
          required final String? email,
      @JsonKey(name: 'phone')
          required final String? phoneNumber,
      @JsonKey(name: 'pay_available')
          required final bool? payAvailable}) = _$_PartnerClub;

  factory _PartnerClub.fromJson(Map<String, dynamic> json) =
      _$_PartnerClub.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get uuid;
  @override
  @JsonKey(name: 'min_price', fromJson: toRublesNullable)
  int? get minPrice;
  @override
  @JsonKey(name: 'address')
  Address? get address;
  @override
  @JsonKey(name: 'distance')
  double? get distance;
  @override
  @JsonKey(name: 'label')
  String? get label;
  @override
  @JsonKey(name: 'rating')
  Rating? get rating;
  @override
  @JsonKey(name: 'photos')
  List<Photo>? get photos;
  @override
  @JsonKey(name: 'facilities')
  List<Facility>? get facilities;
  @override
  @JsonKey(name: 'batch_hours_available')
  double? get batchHoursAvailable;
  @override
  @JsonKey(name: 'is_favorite')
  bool? get isFavorite;
  @override
  @JsonKey(name: 'work_schedule')
  List<WorkSchedule>? get workSchedule;
  @override
  @JsonKey(name: 'activities')
  List<Activity>? get activities;
  @override
  @JsonKey(name: 'organization')
  Organization? get organization;
  @override
  @JsonKey(name: 'documents')
  List<Document>? get documents;
  @override
  @JsonKey(name: 'timezone')
  String? get timezone;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'pay_available')
  bool? get payAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerClubCopyWith<_$_PartnerClub> get copyWith =>
      throw _privateConstructorUsedError;
}
