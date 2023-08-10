import 'package:bloc_starter_test/features/persons/models/persons.dart';

import '../services/persons_api_service.dart';

abstract class  PersonsRepository {
  final PersonsApiService personApiService;

   PersonsRepository(this.personApiService);

  Future<Persons> fetchPersons({int startIndex});
}

class PersonsRepositoryImpl implements  PersonsRepository {
  @override
  final PersonsApiService personApiService;

  PersonsRepositoryImpl({required this.personApiService});

  @override
  Future<Persons> fetchPersons({int startIndex = 0}) async {
    return await personApiService.fetchPersons();
  }
}
