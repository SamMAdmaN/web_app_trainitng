part of 'persons_bloc.dart';

@immutable
abstract class PersonsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PersonsFetchEvent extends PersonsEvent {}
