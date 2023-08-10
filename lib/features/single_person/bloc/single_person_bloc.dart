import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_starter_test/common/services/logger.dart';
import 'package:bloc_starter_test/features/single_person/models/person.dart';
import 'package:bloc_starter_test/features/single_person/repositories/single_person_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'single_person_event.dart';

part 'single_person_state.dart';

class SinglePersonBloc extends Bloc<SinglePersonEvent, SinglePersonState> {
  final SinglePersonRepository personRepository;

  SinglePersonBloc({required this.personRepository}) : super(const SinglePersonState()) {
    on<SinglePersonFetchEvent>(_onPersonFetched);
  }

  Future<void> _onPersonFetched(
      SinglePersonFetchEvent event, Emitter<SinglePersonState> emit) async {
    try {
      if (state.status == PersonStatus.initial) {
        final id = event.id;
        log.fine('BLOC ID >> $id');
        final person = await personRepository.fetchSinglePerson(id: id);

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
