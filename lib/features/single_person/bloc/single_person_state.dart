part of 'single_person_bloc.dart';

enum PersonStatus { initial, success, failure }

class SinglePersonState extends Equatable {
  final PersonStatus status;
  final String? errorMessage;
  final Person person;

  const SinglePersonState({
    this.status = PersonStatus.initial,
    this.errorMessage,
    this.person = const Person(),
  });

  SinglePersonState copyWith({
    PersonStatus? status,
    String? errorMessage,
    Person? person,
  }) {
    return SinglePersonState(
        status: status ?? this.status,
        errorMessage: errorMessage ?? this.errorMessage,
        person: person ?? this.person);
  }

  @override
  List<Object> get props => [status, person];

  @override
  String toString() {
    return 'SinglePersonState{status: $status,  errorMessage: $errorMessage}';
  }
}
