part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final bool isRegister;
  final UserAccount userAccount;

  AuthSuccess({required this.isRegister, required this.userAccount});
}
