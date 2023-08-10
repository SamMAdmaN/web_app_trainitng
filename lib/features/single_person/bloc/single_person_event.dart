part of 'single_person_bloc.dart';

@immutable
abstract class SinglePersonEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SinglePersonFetchEvent extends SinglePersonEvent {
  SinglePersonFetchEvent({required this.id});

  final String id;

  @override
  List<Object> get props => [id];

  @override
  String toString() => 'PersonFetchEvent { id: $id }';
}
