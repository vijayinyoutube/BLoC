part of 'mybloc_bloc.dart';

abstract class MyblocState extends Equatable {
  const MyblocState();
}

class MyblocInitial extends MyblocState {
  @override
  List<Object> get props => [];
}

class FormLoaded extends MyblocState {
  @override
  List<Object> get props => [];
}
