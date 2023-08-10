import 'package:bloc_starter_test/features/persons/repositories/persons_repository.dart';
import 'package:bloc_starter_test/features/single_person/repositories/single_person_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/di/injector_module.dart';
import '../../features/posts/posts.dart';

class RepositoriesHolder extends StatelessWidget {
  final Widget child;

  const RepositoriesHolder({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        // put your common repositories and services here
        RepositoryProvider<PostsRepository>(
          create: (context) => PostsRepositoryImpl(
            postsApiService: InjectorModule.locator(),
          ),
        ),
        RepositoryProvider<PersonsRepository>(
          create: (context) => PersonsRepositoryImpl(
            personApiService: InjectorModule.locator(),
          ),
        ),
        RepositoryProvider<SinglePersonRepository>(
          create: (context) => SinglePersonRepositoryImpl(
            personApiService: InjectorModule.locator(),
          ),
        ),
      ],
      child: child,
    );
  }
}
