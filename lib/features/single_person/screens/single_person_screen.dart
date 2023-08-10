import 'package:bloc_starter_test/features/single_person/bloc/single_person_bloc.dart';
import 'package:bloc_starter_test/features/single_person/widgets/single_person_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SinglePersonScreen extends StatelessWidget {
  final String? id;

  const SinglePersonScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Person')),
      body: BlocProvider(
        create: (_) => SinglePersonBloc(
          personRepository: RepositoryProvider.of(context),
        )..add(SinglePersonFetchEvent(id: id ?? '')),
        child: const PersonItem(),
        // child: const Text('123'),
      ),
    );
  }
}
