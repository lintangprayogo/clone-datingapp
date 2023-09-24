import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:simple_datting_app/src/features/loves_page/data/data_match_dummy.dart';
import 'package:simple_datting_app/src/features/loves_page/domain/user.dart';

part 'people_loved_event.dart';
part 'people_loved_state.dart';

class PeopleLovedBloc extends Bloc<PeopleLovedEvent, PeopleLovedState> {
  PeopleLovedBloc() : super(PeopleLovedInitial()) {
    on<OnPeopleLovedEventCalled>((event, emit) async {
      emit(PeopleLovedLoading());
      await Future.delayed(const Duration(seconds: 1));
      emit(PeopleLovedSuccess(userMatch: dataMatchDummy));
    });

    on<AddPeopleLoved>((event, emit) {
      emit(PeopleLovedLoading());
      dataMatchDummy.remove(event.user);
      dataMatchDummy.add(event.user);
      emit(PeopleLovedSuccess(userMatch: dataMatchDummy));
    });

    on<RemovePeopleLoved>((event, emit) {
      emit(PeopleLovedLoading());
      dataMatchDummy.remove(event.user);
      emit(PeopleLovedSuccess(userMatch: dataMatchDummy));
    });
  }
}
