part of 'explore_people_bloc.dart';

@immutable
sealed class ExplorePeopleState {}

final class ExplorePeopleInitial extends ExplorePeopleState {}

final class ExplorePeopleLoading extends ExplorePeopleState {}

final class ExplorePeopleSuccess extends ExplorePeopleState {
  final List<User> result;

  ExplorePeopleSuccess({required this.result});
}
