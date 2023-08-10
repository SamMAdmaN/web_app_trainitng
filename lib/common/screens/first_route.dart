import 'package:bloc_starter_test/features/persons/bloc/persons_bloc.dart';
import 'package:bloc_starter_test/features/persons/widgets/person_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/persons/widgets/bottom_loader.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Person')),
      body: BlocProvider(
        create: (_) => PersonsBloc(
          personsRepository: RepositoryProvider.of(context),
        )..add(PersonsFetchEvent()),
        child: const ItemsList(),
        // child: const Text('123'),
      ),
    );
  }
}

class ItemsList extends StatefulWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  final _controller = PageController(
    viewportFraction: 0.2,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonsBloc, PersonsState>(
      builder: (context, state) {
        switch (state.status) {
          case PersonStatus.failure:
            return const Center(child: Text('failed to fetch persons'));
          case PersonStatus.success:
            if (state.person.personsInfo!.isEmpty) {
              return const Center(child: Text('no posts'));
            }
            return PageView.builder(

              itemBuilder: (BuildContext context, int index) {
                return index >= state.person.personsInfo!.length
                    ? const BottomLoader()
                    : PersonListItem(
                        personInfo: state.person.personsInfo![index],
                      );
              },
              itemCount: state.person.personsInfo!.length,
              controller: _controller,
            );
          default:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
