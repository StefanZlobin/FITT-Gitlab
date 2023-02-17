import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_errors.freezed.dart';

@freezed
class DioExceptions extends DioError with _$DioExceptions {
  const factory DioExceptions.badRequestException(
      {required RequestOptions requestOptions}) = _BadRequestException;
  const factory DioExceptions.notFoundException(
      {required RequestOptions requestOptions}) = _NotFoundException;
  const factory DioExceptions.internalServerErrorException(
      {required RequestOptions requestOptions}) = _InternalServerErrorException;
  const factory DioExceptions.conflictException(
      {required RequestOptions requestOptions}) = _ConflictException;
  const factory DioExceptions.unauthorizedException(
      {required RequestOptions requestOptions}) = _UnauthorizedException;
  const factory DioExceptions.noInternetConnectionException(
          {required RequestOptions requestOptions}) =
      _NoInternetConnectionException;
  const factory DioExceptions.deadlineExceededException(
      {required RequestOptions requestOptions}) = _DeadlineExceededException;
}
