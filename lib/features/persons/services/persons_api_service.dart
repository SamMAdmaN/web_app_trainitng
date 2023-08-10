import 'package:bloc_starter_test/features/persons/models/persons.dart';

import '../../../common/services/services.dart';
import '../../../network/api_client.dart';

const String personPath = '/user?limit=100';

abstract class PersonsApiService {
  PersonsApiService();

  Future<Persons> fetchPersons({int startIndex = 0});
}

class PersonsApiServiceImpl implements PersonsApiService {
  final ApiClient _apiClient;

  PersonsApiServiceImpl(this._apiClient);

  @override
  Future<Persons> fetchPersons({int startIndex = 0}) async {
    try {
      final personListResponse = await _apiClient.get(
        personPath,
        // params: {'_start': '$startIndex'},
      );
      return Persons.fromJson(personListResponse);
    } catch (e) {
      log.severe('_fetchPerson error: $e');
      rethrow;
    }
  }
}
