// ignore_for_file: prefer_mixin

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:rxdart/rxdart.dart';

part 'input_phone_number_bloc.freezed.dart';
part 'input_phone_number_event.dart';
part 'input_phone_number_state.dart';

class InputPhoneNumberBloc
    extends Bloc<InputPhoneNumberEvent, InputPhoneNumberState> with Disposable {
  InputPhoneNumberBloc() : super(const InputPhoneNumberState.initial()) {
    on<_InputPhoneNumberEventPhoneNumberChanged>(
      _onInputPhoneNumberEventPhoneNumberChanged,
    );
  }

  final BehaviorSubject<String?> _phoneNumberController =
      BehaviorSubject.seeded(null, sync: true);
  void Function(String?) get updatePhoneNumber =>
      _phoneNumberController.sink.add;
  Stream<String?> get phoneNumber => _phoneNumberController;

  final phoneNumberMask = '___) ___ - __ - __ ';
  final placeholder = '_ _ _) _ _ _ - _ _ - _ _ ';
  late MaskTextInputFormatter phoneNumberFormatter = MaskTextInputFormatter(
    mask: phoneNumberMask,
    filter: {'_': RegExp(r'[0-9]')},
  );

  void _onInputPhoneNumberEventPhoneNumberChanged(
    _InputPhoneNumberEventPhoneNumberChanged event,
    Emitter<InputPhoneNumberState> emit,
  ) {
    if (phoneNumberFormatter.isFill()) {
      final number = event.phoneNumber;
      updatePhoneNumber(number);
      emit(InputPhoneNumberState.loaded(phoneNumber: number));
    } else {
      emit(const InputPhoneNumberState.initial());
    }
  }

  @override
  FutureOr onDispose() {
    _phoneNumberController.close();
  }
}
