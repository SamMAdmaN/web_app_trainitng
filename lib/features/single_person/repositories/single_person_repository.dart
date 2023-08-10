
import 'package:bloc_starter_test/features/single_person/models/person.dart';

import '../services/single_person_api_service.dart';

abstract class SinglePersonRepository {
  final SinglePersonApiService personApiService;

  SinglePersonRepository(this.personApiService);

  Future<Person> fetchSinglePerson({int startIndex, required String id});
}

class SinglePersonRepositoryImpl implements SinglePersonRepository {
  @override
  final SinglePersonApiService personApiService;

  SinglePersonRepositoryImpl({required this.personApiService});

  @override
  Future<Person> fetchSinglePerson({int startIndex = 0, required String id}) async {
    return await personApiService.fetchSinglePerson(id: id);
  }
}
