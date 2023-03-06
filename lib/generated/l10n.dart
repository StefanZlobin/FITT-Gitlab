// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Log in to your account`
  String get inputPhoneNumber {
    return Intl.message(
      'Log in to your account',
      name: 'inputPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation of the number`
  String get inputSecureCode {
    return Intl.message(
      'Confirmation of the number',
      name: 'inputSecureCode',
      desc: '',
      args: [],
    );
  }

  /// `Workout`
  String get workoutPageTitle {
    return Intl.message(
      'Workout',
      name: 'workoutPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get informationPageTitle {
    return Intl.message(
      'Information',
      name: 'informationPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Workouts ({workoutCount})`
  String workoutListPageTitle(Object workoutCount) {
    return Intl.message(
      'Workouts ($workoutCount)',
      name: 'workoutListPageTitle',
      desc: '',
      args: [workoutCount],
    );
  }

  /// `Workout history`
  String get workoutArchivePageTitle {
    return Intl.message(
      'Workout history',
      name: 'workoutArchivePageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Favourite clubs ({clubCount})`
  String clubFavouriteListPageTitle(Object clubCount) {
    return Intl.message(
      'Favourite clubs ($clubCount)',
      name: 'clubFavouriteListPageTitle',
      desc: '',
      args: [clubCount],
    );
  }

  /// `Contact support`
  String get feedbackPageTitle {
    return Intl.message(
      'Contact support',
      name: 'feedbackPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `One-time training`
  String get buyWorkoutPageTitle {
    return Intl.message(
      'One-time training',
      name: 'buyWorkoutPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Watch Packages`
  String get clubBatchesPageTitle {
    return Intl.message(
      'Watch Packages',
      name: 'clubBatchesPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Buying a watch package`
  String get clubBatchPageTitle {
    return Intl.message(
      'Buying a watch package',
      name: 'clubBatchPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get clubInformationPageTitle {
    return Intl.message(
      'Information',
      name: 'clubInformationPageTitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
