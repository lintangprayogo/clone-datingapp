part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class RegisterAuthEvent extends AuthEvent {
  final bool isRegister;
  final UserAccount userAccount;

  RegisterAuthEvent({required this.isRegister, required this.userAccount});
}
