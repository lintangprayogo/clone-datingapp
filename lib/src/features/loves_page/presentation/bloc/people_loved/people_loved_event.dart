part of 'people_loved_bloc.dart';

@immutable
sealed class PeopleLovedEvent {}

class OnPeopleLovedEventCalled extends PeopleLovedEvent {}

class AddPeopleLoved extends PeopleLovedEvent {
  final User user;
  AddPeopleLoved({
    required this.user,
  });
}

class RemovePeopleLoved extends PeopleLovedEvent {
  final User user;
  RemovePeopleLoved({
    required this.user,
  });
}
