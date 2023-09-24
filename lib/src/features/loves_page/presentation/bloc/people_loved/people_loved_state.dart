part of 'people_loved_bloc.dart';

@immutable
sealed class PeopleLovedState {}

final class PeopleLovedInitial extends PeopleLovedState {}

final class PeopleLovedLoading extends PeopleLovedState {}

final class PeopleLovedSuccess extends PeopleLovedState {
  final List<User> userMatch;

  PeopleLovedSuccess({required this.userMatch});
}
