import 'package:fitt/core/utils/mixins/serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_pair.g.dart';

@JsonSerializable()
class TokenPair with Serializable {
  const TokenPair({required this.access, required this.refresh});

  @JsonKey(name: 'access')
  final String? access;
  @JsonKey(name: 'refresh')
  final String? refresh;

  factory TokenPair.fromJson(Map json) =>
      _$TokenPairFromJson(json as Map<String, dynamic>);
  @override
  Map<String, dynamic> toJson() => _$TokenPairToJson(this);
}
