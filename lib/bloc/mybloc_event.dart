part of 'mybloc_bloc.dart';

abstract class MyblocEvent extends Equatable {
  const MyblocEvent();
}

class SubmitForm extends MyblocEvent {
  @override
  
  List<Object> get props => throw UnimplementedError();
}
