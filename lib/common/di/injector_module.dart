// ignore_for_file: avoid_classes_with_only_static_members

import 'package:bloc_starter_test/features/persons/services/persons_api_service.dart';
import 'package:bloc_starter_test/features/single_person/services/single_person_api_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../common/utils/utils.dart';
import '../../features/posts/services/services.dart';
import '../../network/network.dart';
import '../../network/refresh_token/dio_token_request_retrier.dart';

part '../../network/dio_bootstrapper.dart';

class InjectorModule {
  static GetIt locator = GetIt.asNewInstance();

  static Future<void> inject() async {
    final dio = await _DioBootstrapper().setupDio();
    locator.registerSingleton<Dio>(dio);
    locator.registerFactory<ApiClient>(
      () => ApiClientImpl(
        dio: locator(),
      ),
    );
    locator.registerFactory<PostsApiService>(
      () => PostsApiServiceImpl(
        locator(),
      ),
    );
    locator.registerFactory<PersonsApiService>(
      () => PersonsApiServiceImpl(
        locator(),
      ),
    );
    locator.registerFactory<SinglePersonApiService>(
      () => SinglePersonApiServiceImpl(
        locator(),
      ),
    );
  }
}
