import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fitt/data/repositories/analytics/analytics_repository_impl.dart';
import 'package:fitt/data/services/app_metrica/app_metrica_service_impl.dart';
import 'package:fitt/data/services/push_notifications/push_notifications_service_impl.dart';
import 'package:fitt/data/services/remote_config/remote_config_service_impl.dart';
import 'package:fitt/domain/blocs/analytics_dashboard/analytics_dashboard_bloc.dart';
import 'package:fitt/domain/blocs/analytics_filtering/analytics_filtering_bloc.dart';
import 'package:fitt/domain/blocs/analytics_kpi/analytics_kpi_bloc.dart';
import 'package:fitt/domain/blocs/app_update/app_update_bloc.dart';
import 'package:fitt/domain/blocs/menu/menu_bloc.dart';
import 'package:fitt/domain/blocs/notifications/notifications_bloc.dart';
import 'package:fitt/domain/blocs/payment/payment_bloc.dart';
import 'package:fitt/domain/blocs/staff_clubs_filters/staff_clubs_filters_bloc.dart';
import 'package:fitt/domain/blocs/user_avatar/user_avatar_bloc.dart';
import 'package:fitt/domain/repositories/analytics/analytics_repository.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/domain/services/push_notifications/push_notifications_service.dart';
import 'package:fitt/domain/services/remote_config/remote_config_service.dart';
import 'package:fitt/features/account/domain/blocs/account/account_bloc.dart';
import 'package:fitt/features/auth/data/repositories/authentication/authentication_repository_impl.dart';
import 'package:fitt/features/auth/data/repositories/authorization/authorization_repository_impl.dart';
import 'package:fitt/features/auth/data/repositories/identification/identification_repository_impl.dart';
import 'package:fitt/features/auth/data/repositories/login/login_repository_impl.dart';
import 'package:fitt/features/auth/data/repositories/token/token_repository_impl.dart';
import 'package:fitt/features/auth/domain/blocs/authorization/authorization_bloc.dart';
import 'package:fitt/features/auth/domain/blocs/input_phone_number/input_phone_number_bloc.dart';
import 'package:fitt/features/auth/domain/blocs/input_secure_code/input_secure_code_bloc.dart';
import 'package:fitt/features/auth/domain/blocs/login/login_bloc.dart';
import 'package:fitt/features/auth/domain/blocs/login_error_timer/login_error_timer_bloc.dart';
import 'package:fitt/features/auth/domain/repositories/authentication/authentication_repository.dart';
import 'package:fitt/features/auth/domain/repositories/authorization/authorization_repository.dart';
import 'package:fitt/features/auth/domain/repositories/identification/identification_repository.dart';
import 'package:fitt/features/auth/domain/repositories/login/login_repository.dart';
import 'package:fitt/features/auth/domain/repositories/token/token_repository.dart';
import 'package:fitt/features/clubs/domain/blocs/club_filtering/club_filtering_bloc.dart';
import 'package:fitt/features/clubs/domain/blocs/club_sorting/club_sorting_bloc.dart';
import 'package:fitt/features/clubs/domain/blocs/partner_clubs_favorite/partner_clubs_favorite_bloc.dart';
import 'package:fitt/features/clubs/domain/cubits/calculate_workout_price/calculate_workout_price_cubit.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/cubits/club_photo_slider/club_photo_slider_cubit.dart';
import 'package:fitt/features/clubs/domain/cubits/purchased_batch/purchased_batch_cubit.dart';
import 'package:fitt/features/map/domain/blocs/carousel/carousel_bloc.dart';
import 'package:fitt/features/map/domain/blocs/is_searching/is_searching_bloc.dart';
import 'package:fitt/features/map/domain/blocs/map/map_bloc.dart';
import 'package:fitt/features/map/domain/blocs/search/search_bloc.dart';
import 'package:fitt/features/payment/domain/blocs/payment_toggle/payment_toggle_bloc.dart';
import 'package:fitt/features/payment/domain/blocs/payment_type/payment_type_bloc.dart';
import 'package:fitt/features/payment/domain/blocs/payment_workout_button/payment_workout_button_bloc.dart';
import 'package:fitt/features/workouts/domain/blocs/admin_workout_timer/admin_workout_timer_bloc.dart';
import 'package:fitt/features/workouts/domain/blocs/closest_workout/closest_workout_bloc.dart';
import 'package:fitt/features/workouts/domain/blocs/workout/workout_bloc.dart';
import 'package:fitt/features/workouts/domain/blocs/workout_sorting/workout_sorting_bloc.dart';
import 'package:fitt/features/workouts/domain/blocs/workout_timer/workout_timer_bloc.dart';
import 'package:fitt/features/workouts/domain/blocs/workouts/workouts_bloc.dart';
import 'package:fitt/features/workouts/domain/blocs/workouts_archive/workouts_archive_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../config/config.dart';
import '../../data/repositories/resource/resource_repository_impl.dart';
import '../../data/services/geolocation/geolocation_service_impl.dart';
import '../../data/services/local_notifications/local_notifications_service_impl.dart';
import '../../data/source/local_data_source/user_local_client/user_local_client.dart';
import '../../data/storages/local_storage.dart';
import '../../data/storages/token_storage.dart';
import '../../domain/cubits/account_save_button/account_save_button_cubit.dart';
import '../../domain/cubits/admin_club/admin_club_cubit.dart';
import '../../domain/cubits/admin_clubs/admin_clubs_cubit.dart';
import '../../domain/cubits/admin_modal_bottom_sheet/admin_modal_bottom_sheet_cubit.dart';
import '../../domain/cubits/admin_workout/admin_workout_cubit.dart';
import '../../domain/cubits/admin_workout_action_button/admin_workout_action_button_cubit.dart';
import '../../domain/cubits/admin_workouts/admin_workouts_cubit.dart';
import '../../domain/cubits/buy_batch/buy_batch_cubit.dart';
import '../../domain/cubits/buy_workout/buy_workout_cubit.dart';
import '../../domain/cubits/feedback/feedback_cubit.dart';
import '../../domain/cubits/geolocation/geolocation_cubit.dart';
import '../../domain/cubits/modal_bottom_sheet/modal_bottom_sheet_cubit.dart';
import '../../domain/cubits/workout_slider_button_type/workout_slider_button_type_cubit.dart';
import '../../domain/repositories/resource/resource_repository.dart';
import '../../domain/services/geolocation/geolocation_service.dart';
import '../../domain/services/local_notifications/local_notifications_service.dart';
import '../../domain/ticker.dart';
import '../../features/auth/data/repositories/user/user_repository_impl.dart';
import '../../features/auth/domain/repositories/user/user_repository.dart';
import '../../features/clubs/data/repositories/partner_club/partner_club_repository_impl.dart';
import '../../features/clubs/domain/repositories/partner_club/partner_club_repository.dart';
import '../../features/map/data/repositories/map/map_repository_impl.dart';
import '../../features/map/data/repositories/search/search_repository_impl.dart';
import '../../features/map/domain/repositories/map/map_repository.dart';
import '../../features/map/domain/repositories/search/search_repository.dart';
import '../../features/payment/data/repositories/payment/payment_repository_impl.dart';
import '../../features/payment/domain/repositories/payment/payment_repository.dart';
import '../../features/workouts/data/repositories/admin/admin_repository_impl.dart';
import '../../features/workouts/data/repositories/workout/workout_repository_impl.dart';
import '../../features/workouts/domain/repositories/admin/admin_repository.dart';
import '../../features/workouts/domain/repositories/workout/workout_repository.dart';
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
  getIt.registerSingleton(Dio(
    BaseOptions(
      connectTimeout: 30000, // 30 seconds
      receiveTimeout: 30000,
    ),
  ));
  getIt.registerSingleton(
    Dio(
      BaseOptions(
        connectTimeout: 30000,
        receiveTimeout: 30000,
      ),
    ),
    instanceName: 'no-token',
  );
}

void _addTokenInterceptor() {
  final dio = getIt<Dio>();
  final tokenInterceptor = TokenInterceptor(dio: dio);
  dio.interceptors.add(tokenInterceptor);
}

void _registerRepositories() {
  getIt.registerLazySingleton<TokenRepository>(
    () => TokenRepositoryImpl(
      getIt<Dio>(instanceName: 'no-token'),
      TokenStorage(Storages.tokens),
      baseUrl: Config.baseUrl,
    ),
  );

  getIt.registerLazySingleton(
    () => UserLocalClient(LocalStorage(Storages.user)),
  );

  getIt.registerLazySingleton<UserRepository>(
    () {
      _addTokenInterceptor();
      return UserRepositoryImpl(
        getIt<Dio>(),
        getIt<UserLocalClient>(),
        baseUrl: Config.baseUrl,
      );
    },
  );

  getIt.registerLazySingleton<IdentificationRepository>(
    () => IdentificationRepositoryImpl(),
  );

  getIt.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(),
  );

  getIt.registerLazySingleton<AuthorizationRepository>(
    () => AuthorizationRepositoryImpl(),
  );

  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(
      getIt<Dio>(instanceName: 'no-token'),
      baseUrl: Config.baseUrl,
    ),
  );

  getIt.registerLazySingleton<AdminRepository>(
    () {
      _addTokenInterceptor();
      return AdminRepositoryImpl(
        getIt(),
        baseUrl: Config.baseUrl,
      );
    },
  );

  getIt.registerLazySingleton<PaymentRepository>(
    () => PaymentRepositoryImpl(
      getIt(),
      baseUrl: Config.baseUrl,
    ),
  );

  getIt.registerLazySingleton<WorkoutRepository>(
    () {
      _addTokenInterceptor();

      return WorkoutRepositoryImpl(
        getIt(),
        baseUrl: Config.baseUrl,
      );
    },
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

  getIt.registerLazySingleton<AnalyticsRepository>(
    () => AnalyticsRepositoryImpl(
      getIt(),
      baseUrl: Config.baseUrl,
    ),
  );
}

void _regusterServices() {
  getIt.registerLazySingleton<GeolocationService>(
    () => GeolocationServiceImpl(),
  );
  getIt.registerLazySingleton<LocalNotificationsService>(
    () => LocalNotificationsServiceImpl(),
  );
  getIt.registerLazySingleton<AppMetricaService>(() => AppMetricaServiceImpl());
  getIt.registerLazySingleton<PushNotificationsService>(
    () => PushNotificationsServiceImpl(),
  );
  getIt.registerLazySingleton<RemoteConfigService>(
    () => RemoteConfigServiceImpl(),
  );
}

void _registerBlocs() {
  getIt.registerLazySingleton<IsSearchingBloc>(() => IsSearchingBloc());
  getIt.registerLazySingleton<PaymentToggleBloc>(() => PaymentToggleBloc());
  getIt.registerLazySingleton<PaymentTypeBloc>(() => PaymentTypeBloc());
  getIt.registerLazySingleton<PaymentWorkoutButtonBloc>(
    () => PaymentWorkoutButtonBloc(),
  );
  getIt.registerLazySingleton<WorkoutBloc>(() => WorkoutBloc());
  getIt.registerFactory<WorkoutTimerBloc>(
    () => WorkoutTimerBloc(ticker: const Ticker()),
  );
  getIt.registerLazySingleton<AdminWorkoutTimerBloc>(
    () => AdminWorkoutTimerBloc(ticker: const Ticker()),
  );
  getIt.registerFactory<WorkoutSliderButtonTypeCubit>(
    () => WorkoutSliderButtonTypeCubit(),
  );

  getIt.registerFactory<AdminWorkoutActionButtonCubit>(
    () => AdminWorkoutActionButtonCubit(),
  );
  getIt.registerLazySingleton<AdminModalBottomSheetCubit>(
    () => AdminModalBottomSheetCubit(),
  );
  getIt.registerLazySingleton<ModalBottomSheetCubit>(
    () => ModalBottomSheetCubit(),
  );
  getIt.registerLazySingleton<WorkoutsBloc>(() => WorkoutsBloc());
  getIt.registerLazySingleton<GeolocationCubit>(() => GeolocationCubit());
  getIt.registerLazySingleton<SearchBloc>(() => SearchBloc());
  getIt.registerLazySingleton<WorkoutsArchiveBloc>(() => WorkoutsArchiveBloc());
  getIt.registerLazySingleton<WorkoutSortingBloc>(() => WorkoutSortingBloc());
  getIt.registerLazySingleton<MapBloc>(() => MapBloc());
  getIt.registerLazySingleton<CarouselBloc>(() => CarouselBloc());
  getIt.registerLazySingleton<LoginBloc>(() => LoginBloc());
  getIt.registerLazySingleton<AccountBloc>(() => AccountBloc());
  getIt.registerLazySingleton<AdminWorkoutsCubit>(() => AdminWorkoutsCubit());
  getIt.registerLazySingleton<AdminWorkoutCubit>(() => AdminWorkoutCubit());
  getIt.registerLazySingleton<AdminClubsCubit>(() => AdminClubsCubit());
  getIt.registerLazySingleton<AdminClubCubit>(() => AdminClubCubit());
  getIt.registerLazySingleton<ClubCubit>(() => ClubCubit());
  getIt.registerLazySingleton<LoginErrorTimerBloc>(
    () => LoginErrorTimerBloc(ticker: const Ticker()),
  );
  getIt.registerLazySingleton<ClubPhotoSliderCubit>(
    () => ClubPhotoSliderCubit(),
  );
  getIt.registerLazySingleton<CalculateWorkoutPriceCubit>(
    () => CalculateWorkoutPriceCubit(),
  );
  getIt.registerLazySingleton<BuyBatchCubit>(() => BuyBatchCubit());
  getIt.registerLazySingleton<BuyWorkoutCubit>(() => BuyWorkoutCubit());
  getIt.registerLazySingleton<NotificationsBloc>(() => NotificationsBloc());
  getIt.registerLazySingleton<ClubFilteringBloc>(() => ClubFilteringBloc());
  getIt.registerLazySingleton<FeedbackCubit>(() => FeedbackCubit());
  getIt.registerLazySingleton<AccountSaveButtonCubit>(
    () => AccountSaveButtonCubit(),
  );
  getIt.registerLazySingleton<AnalyticsKPIBloc>(() => AnalyticsKPIBloc());
  getIt.registerLazySingleton<AnalyticsDashboardBloc>(
    () => AnalyticsDashboardBloc(),
  );
  getIt.registerLazySingleton<AnalyticsFilteringBloc>(
    () => AnalyticsFilteringBloc(),
  );

  getIt.registerLazySingleton<PurchasedBatchCubit>(() => PurchasedBatchCubit());
  getIt.registerLazySingleton<StaffClubsFiltersBloc>(
    () => StaffClubsFiltersBloc(),
  );
  getIt.registerLazySingleton<ClosestWorkoutBloc>(() => ClosestWorkoutBloc());
  getIt.registerLazySingleton<PaymentBloc>(() => PaymentBloc());
  getIt.registerLazySingleton<MenuBloc>(() => MenuBloc());
  getIt.registerLazySingleton<AuthorizationBloc>(() => AuthorizationBloc());
  getIt.registerLazySingleton<UserAvatarBloc>(() => UserAvatarBloc());
  getIt.registerLazySingleton<InputPhoneNumberBloc>(
    () => InputPhoneNumberBloc(),
  );
  getIt.registerLazySingleton<InputSecureCodeBloc>(
    () => InputSecureCodeBloc(),
  );
  getIt.registerLazySingleton<ClubSortingBloc>(() => ClubSortingBloc());
  getIt.registerLazySingleton<PartnerClubsFavoriteBloc>(
    () => PartnerClubsFavoriteBloc(),
  );
  getIt.registerLazySingleton<AppUpdateBloc>(() => AppUpdateBloc());
}
