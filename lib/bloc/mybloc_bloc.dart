import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'mybloc_event.dart';
part 'mybloc_state.dart';

class MyblocBloc extends Bloc<MyblocEvent, MyblocState> {
  @override
  MyblocState get initialState => MyblocInitial();

  @override
  Stream<MyblocState> mapEventToState(
    MyblocEvent event,
  ) async* {
    if (event is SubmitForm) {
      print("Inside SubmitForm Event");
      yield FormLoaded();
    }
  }
}
