import 'package:bloc_starter_test/features/persons/models/persons.dart';
import 'package:bloc_starter_test/features/single_person/models/person.dart';

import '../../../common/services/services.dart';
import '../../../network/api_client.dart';

// const String personPath = '/user';
String personPath(String id) =>
'/user/$id';
abstract class  SinglePersonApiService {
   SinglePersonApiService();

  Future<Person> fetchSinglePerson({int startIndex = 0, required String id});
}

class SinglePersonApiServiceImpl implements  SinglePersonApiService {
  final ApiClient _apiClient;

  SinglePersonApiServiceImpl(this._apiClient);

  @override
  Future<Person> fetchSinglePerson({int startIndex = 0, required String id}) async {
    try {
      final personListResponse = await _apiClient.get(
        personPath(id),
        // params: {'_start': '$startIndex'},
      );
      return Person.fromJson(personListResponse);
    } catch (e) {
      log.severe('_fetchPerson error: $e');
      rethrow;
    }
  }
}
