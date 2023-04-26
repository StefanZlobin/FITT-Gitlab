import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  factory Photo({
    required String original,
    required String thumbnail,
    required String small,
    required String medium,
    required String large,
  }) = _Photo;

  Photo._();

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  factory Photo.fromSingle(String url) {
    return Photo(
      original: url,
      thumbnail: url,
      small: url,
      medium: url,
      large: url,
    );
  }
}
