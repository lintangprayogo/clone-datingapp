import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:simple_datting_app/src/features/auth/data/data_user_account_local.dart';
import 'package:simple_datting_app/src/features/auth/domain/user_account.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegisterAuthEvent>((event, emit) async {
      emit(AuthLoading());
      DataUserAccountLocal.setDataUserAccountToStorage(event.userAccount);
      UserAccountRegister.setUserAccountRegister(true);
      await Future.delayed(const Duration(seconds: 2));
      emit(AuthSuccess(
          isRegister: event.isRegister, userAccount: event.userAccount));
    });
  }
}
