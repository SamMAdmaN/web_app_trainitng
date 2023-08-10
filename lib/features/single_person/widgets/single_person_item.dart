import 'package:bloc_starter_test/common/services/logger.dart';
import 'package:bloc_starter_test/features/single_person/bloc/single_person_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonItem extends StatefulWidget {
  const PersonItem({Key? key}) : super(key: key);

  @override
  State<PersonItem> createState() => _PersonItemState();
}

class _PersonItemState extends State<PersonItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SinglePersonBloc, SinglePersonState>(
      builder: (context, state) {
        switch (state.status) {
          case PersonStatus.failure:
            return const Center(child: Text('failed to fetch persons'));
          case PersonStatus.success:
            if (state.person.id == null) {
              return const Center(child: Text('no posts'));
            }
            return SingleChildScrollView(
                child: Text(state.person.firstName ?? ''));
          default:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
