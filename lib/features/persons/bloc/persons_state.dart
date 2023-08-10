part of 'persons_bloc.dart';

enum PersonStatus { initial, success, failure }

class PersonsState extends Equatable {
  final PersonStatus status;
  final List<PersonsInfo> personInfo;
  final String? errorMessage;
  final Persons person;

  const PersonsState({
    this.status = PersonStatus.initial,
    this.personInfo = const <PersonsInfo>[],
    this.errorMessage,
    this.person =  const Persons( personsInfo: []),
  });

  PersonsState copyWith({
    PersonStatus? status,
    List<PersonsInfo>? personInfo,
    String? errorMessage,
    Persons? person,
  }) {
    return PersonsState(
      status: status ?? this.status,
      personInfo: personInfo ?? this.personInfo,
      errorMessage: errorMessage ?? this.errorMessage,
      person: person ?? this.person
    );
  }

  @override
  List<Object> get props => [status, personInfo, person];

  @override
  String toString() {
    return 'PersonState{status: $status, personInfo: $personInfo, errorMessage: $errorMessage}';
  }
}
