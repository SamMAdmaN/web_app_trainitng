import 'package:bloc_starter_test/features/persons/bloc/persons_bloc.dart';
import 'package:bloc_starter_test/features/persons/widgets/person_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonsScreen extends StatelessWidget {
  const PersonsScreen({super.key, this.id});

  final String? id;

  ///Master details layout

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Person')),
      body: BlocProvider(
        create: (_) => PersonsBloc(
          personsRepository: RepositoryProvider.of(context),
        )..add(PersonsFetchEvent()),
        child: const PersonList(),
        // child: const Text('123'),
      ),
    );
  }
}
