import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fitt/domain/blocs/admin_workout_timer/admin_workout_timer_bloc.dart';
import 'package:fitt/domain/blocs/authentication_error_timer/authentication_error_timer_bloc.dart';
import 'package:fitt/domain/blocs/notifications/notifications_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../config/config.dart';
import '../../data/repositories/admin/admin_repository_impl.dart';
import '../../data/repositories/authentication/auth_repository_impl.dart';
import '../../data/repositories/map/map_repository_impl.dart';
import '../../data/repositories/partner_club/partner_club_repository_impl.dart';
import '../../data/repositories/payment/payment_repository_impl.dart';
import '../../data/repositories/resource/resource_repository_impl.dart';
import '../../data/repositories/search/search_repository_impl.dart';
import '../../data/repositories/user/user_repository_impl.dart';
import '../../data/repositories/workout/workout_repository_impl.dart';
import '../../data/services/geolocation/geolocation_service_impl.dart';
import '../../data/services/local_notifications/local_notifications_service_impl.dart';
import '../../data/source/local_data_source/auth_local_client/auth_local_client.dart';
import '../../data/source/local_data_source/user_local_client/user_local_client.dart';
import '../../data/storages/local_storage.dart';
import '../../data/storages/token_storage.dart';
import '../../domain/blocs/authentication/authentication_bloc.dart';
import '../../domain/blocs/carousel/carousel_bloc.dart';
import '../../domain/blocs/map/map_bloc.dart';
import '../../domain/blocs/search/search_bloc.dart';
import '../../domain/blocs/user/user_bloc.dart';
import '../../domain/blocs/workout_timer/workout_timer_bloc.dart';
import '../../domain/cubits/account_save_button/account_save_button_cubit.dart';
import '../../domain/cubits/admin_club/admin_club_cubit.dart';
import '../../domain/cubits/admin_clubs/admin_clubs_cubit.dart';
import '../../domain/cubits/admin_modal_bottom_sheet/admin_modal_bottom_sheet_cubit.dart';
import '../../domain/cubits/admin_workout/admin_workout_cubit.dart';
import '../../domain/cubits/admin_workout_action_button/admin_workout_action_button_cubit.dart';
import '../../domain/cubits/admin_workouts/admin_workouts_cubit.dart';
import '../../domain/cubits/archive_workouts/archive_workouts_cubit.dart';
import '../../domain/cubits/buy_batch/buy_batch_cubit.dart';
import '../../domain/cubits/buy_workout/buy_workout_cubit.dart';
import '../../domain/cubits/calculate_workout_price/calculate_workout_price_cubit.dart';
import '../../domain/cubits/club/club_cubit.dart';
import '../../domain/cubits/club_photo_slider/club_photo_slider_cubit.dart';
import '../../domain/cubits/feedback/feedback_cubit.dart';
import '../../domain/cubits/filtering/filtering_cubit.dart';
import '../../domain/cubits/geolocation/geolocation_cubit.dart';
import '../../domain/cubits/modal_bottom_sheet/modal_bottom_sheet_cubit.dart';
import '../../domain/cubits/partner_clubs/partner_clubs_cubit.dart';
import '../../domain/cubits/partner_clubs_favorite/partner_clubs_favorite_cubit.dart';
import '../../domain/cubits/resource/resource_cubit.dart';
import '../../domain/cubits/sorting/sorting_cubit.dart';
import '../../domain/cubits/workout/workout_cubit.dart';
import '../../domain/cubits/workout_slider_button_type/workout_slider_button_type_cubit.dart';
import '../../domain/cubits/workouts/workouts_cubit.dart';
import '../../domain/repositories/admin/admin_repository.dart';
import '../../domain/repositories/authentication/auth_repository.dart';
import '../../domain/repositories/map/map_repository.dart';
import '../../domain/repositories/partner_club/partner_club_repository.dart';
import '../../domain/repositories/payment/payment_repository.dart';
import '../../domain/repositories/resource/resource_repository.dart';
import '../../domain/repositories/search/search_repository.dart';
import '../../domain/repositories/user/user_repository.dart';
import '../../domain/repositories/workout/workout_repository.dart';
import '../../domain/services/geolocation/geolocation_service.dart';
import '../../domain/services/local_notifications/local_notifications_service.dart';
import '../../domain/ticker.dart';
import '../constants/stotages.dart';
import '../interceptors/token_interceptor.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  _registerDio();
  _registerRepositories();
  _registerBlocs();
  _regusterServices();
}

void _registerDio() {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(
    Dio(),
    instanceName: 'no-token',
  );
}

void _registerRepositories() {
  getIt.registerLazySingleton(
    () => AuthLocalClient(TokenStorage(Storages.tokens)),
  );

  getIt.registerLazySingleton(
    () => UserLocalClient(LocalStorage(Storages.user)),
  );

  getIt.registerLazySingleton<AuthRepository>(
    () {
      return AuthRepositoryImpl(
        getIt<Dio>(instanceName: 'no-token'),
        getIt<AuthLocalClient>(),
        baseUrl: Config.baseUrl,
      );
    },
  );

  getIt.registerLazySingleton<UserRepository>(
    () {
      final dio = getIt<Dio>();
      final tokenInterceptor = TokenInterceptor(dio: dio);
      dio.interceptors.add(tokenInterceptor);
      return UserRepositoryImpl(
        getIt<Dio>(),
        getIt<UserLocalClient>(),
        baseUrl: Config.baseUrl,
      );
    },
  );

  getIt.registerLazySingleton<AdminRepository>(
    () => AdminRepositoryImpl(
      getIt(),
      baseUrl: Config.baseUrl,
    ),
  );

  getIt.registerLazySingleton<PaymentRepository>(
    () => PaymentRepositoryImpl(
      getIt(),
      baseUrl: Config.baseUrl,
    ),
  );

  getIt.registerLazySingleton<WorkoutRepository>(
    () => WorkoutRepositoryImpl(
      getIt(),
      baseUrl: Config.baseUrl,
    ),
  );

  getIt.registerLazySingleton<SearchRepository>(
    () => SearchRepositoryImpl(
      getIt(instanceName: 'no-token'),
      baseUrl: Config.baseUrl,
    ),
  );

  getIt.registerLazySingleton<MapRepository>(
    () => MapRepositoryImpl(
      getIt(),
      baseUrl: Config.baseUrl,
    ),
  );

  getIt.registerLazySingleton<PartnerClubRepository>(
    () => PartnerClubRepositoryImpl(
      getIt(),
      baseUrl: Config.baseUrl,
    ),
  );

  getIt.registerLazySingleton<ResourceRepository>(
    () => ResourceRepositoryImpl(
      getIt(instanceName: 'no-token'),
      baseUrl: Config.baseUrl,
    ),
  );
}

void _regusterServices() {
  getIt.registerLazySingleton<GeolocationService>(
      () => GeolocationServiceImpl());
  getIt.registerLazySingleton<LocalNotificationsService>(
      () => LocalNotificationsServiceImpl());
}

void _registerBlocs() {
  getIt.registerLazySingleton<WorkoutCubit>(() => WorkoutCubit());
  getIt.registerFactory<WorkoutTimerBloc>(
      () => WorkoutTimerBloc(ticker: const Ticker()));
  getIt.registerLazySingleton<AdminWorkoutTimerBloc>(
      () => AdminWorkoutTimerBloc(ticker: const Ticker()));
  getIt.registerFactory<WorkoutSliderButtonTypeCubit>(
      () => WorkoutSliderButtonTypeCubit());

  getIt.registerFactory<AdminWorkoutActionButtonCubit>(
      () => AdminWorkoutActionButtonCubit());
  getIt.registerLazySingleton<AdminModalBottomSheetCubit>(
      () => AdminModalBottomSheetCubit());
  getIt.registerLazySingleton<ModalBottomSheetCubit>(
      () => ModalBottomSheetCubit());
  getIt.registerLazySingleton<WorkoutsCubit>(() => WorkoutsCubit());
  getIt.registerLazySingleton<GeolocationCubit>(() => GeolocationCubit());
  getIt.registerLazySingleton<SearchBloc>(() => SearchBloc());
  getIt.registerLazySingleton<ArchiveWorkoutsCubit>(
      () => ArchiveWorkoutsCubit());
  getIt.registerLazySingleton<MapBloc>(() => MapBloc());
  getIt.registerLazySingleton<CarouselBloc>(() => CarouselBloc());
  getIt.registerLazySingleton<AuthenticationBloc>(() => AuthenticationBloc());
  getIt.registerLazySingleton<UserBloc>(() => UserBloc());
  getIt.registerLazySingleton<AdminWorkoutsCubit>(() => AdminWorkoutsCubit());
  getIt.registerLazySingleton<AdminWorkoutCubit>(() => AdminWorkoutCubit());
  getIt.registerLazySingleton<AdminClubsCubit>(() => AdminClubsCubit());
  getIt.registerLazySingleton<AdminClubCubit>(() => AdminClubCubit());
  getIt.registerLazySingleton<PartnerClubsCubit>(() => PartnerClubsCubit());
  getIt.registerLazySingleton<PartnerClubsFavoriteCubit>(
      () => PartnerClubsFavoriteCubit());
  getIt.registerLazySingleton<ClubCubit>(() => ClubCubit());
  getIt.registerLazySingleton<AuthenticationErrorTimerBloc>(
      () => AuthenticationErrorTimerBloc(ticker: const Ticker()));
  getIt.registerLazySingleton<ClubPhotoSliderCubit>(
      () => ClubPhotoSliderCubit());
  getIt.registerLazySingleton<CalculateWorkoutPriceCubit>(
      () => CalculateWorkoutPriceCubit());
  getIt.registerLazySingleton<BuyBatchCubit>(() => BuyBatchCubit());
  getIt.registerLazySingleton<BuyWorkoutCubit>(() => BuyWorkoutCubit());
  getIt.registerLazySingleton<NotificationsBloc>(() => NotificationsBloc());
  getIt.registerLazySingleton<ResourceCubit>(() => ResourceCubit());
  getIt.registerLazySingleton<ResourceCubit>(
    instanceName: 'favorite',
    () => ResourceCubit(),
  );
  getIt.registerLazySingleton<FilteringCubit>(() => FilteringCubit());
  getIt.registerLazySingleton<FilteringCubit>(
    instanceName: 'favorite',
    () => FilteringCubit(),
  );
  getIt.registerLazySingleton<SortingCubit>(() => SortingCubit());
  getIt.registerLazySingleton<FeedbackCubit>(() => FeedbackCubit());
  getIt.registerLazySingleton<AccountSaveButtonCubit>(
      () => AccountSaveButtonCubit());
}
