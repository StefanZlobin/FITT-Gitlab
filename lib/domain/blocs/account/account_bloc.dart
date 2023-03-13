import 'package:bloc/bloc.dart';
import 'package:fitt/domain/models/account_user_first_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const _Initial()) {
    on<AccountEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
