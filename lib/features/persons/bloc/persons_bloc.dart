import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_starter_test/features/persons/models/persons.dart';
import 'package:bloc_starter_test/features/persons/models/person_info.dart';
import 'package:bloc_starter_test/features/persons/repositories/persons_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'persons_event.dart';

part 'persons_state.dart';

class PersonsBloc extends Bloc<PersonsEvent, PersonsState> {
  final PersonsRepository personsRepository;

  PersonsBloc({required this.personsRepository}) : super(const PersonsState()) {
    on<PersonsFetchEvent>(_onPersonFetched);
  }

  Future<void> _onPersonFetched(
      PersonsFetchEvent event, Emitter<PersonsState> emit) async {
    try {
      if (state.status == PersonStatus.initial) {
        final person = await personsRepository.fetchPersons();

        return emit(
          state.copyWith(
            status: PersonStatus.success,
            person: person,
          ),
        );
      }

      emit(
        state.copyWith(status: PersonStatus.success, person: state.person),
      );
    } catch (e, _) {
      /// use exception and [stackTrace] in Firebase Crashlytics or Sentry (for Web)
      emit(
        state.copyWith(
          status: PersonStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
