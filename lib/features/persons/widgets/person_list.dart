import 'package:bloc_starter_test/features/persons/bloc/persons_bloc.dart';
import 'package:bloc_starter_test/features/persons/models/person_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bottom_loader.dart';

class PersonList extends StatefulWidget {
  const PersonList({Key? key}) : super(key: key);

  @override
  State<PersonList> createState() => _PersonListState();
}

class _PersonListState extends State<PersonList> {
  final _scrollController = ScrollController();
  late PersonsInfo _selectedItem =
      PersonsInfo(title: '', id: '0', picture: '', firstName: '', lastName: '');

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
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
            return _buildTabletLayout(
                state: state, scrollController: _scrollController);

          //   ListView.builder(
          //   itemBuilder: (BuildContext context, int index) {
          //     return index >= state.person.personsInfo!.length
          //         ? const BottomLoader()
          //         : PersonListItem(
          //             personInfo: state.person.personsInfo![index],
          //           );
          //   },
          //   itemCount: state.person.personsInfo!.length,
          //   controller: _scrollController,
          // );
          default:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<PersonsBloc>().add(PersonsFetchEvent());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) {
      return false;
    }
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  Widget _buildTabletLayout(
      {required PersonsState state,
      required ScrollController scrollController}) {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Material(
            elevation: 4.0,
            child: ItemListing(
              state: state,
              scrollController: scrollController,
              itemSelectedCallback: (item) {
                Router.neglect(
                    context,
                    () => context
                        .goNamed('persons', params: {'id': item.id ?? ''}));

                setState(() {
                  _selectedItem = item;
                });
              },
              selectedItem: _selectedItem,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: ItemDetails(
            isInTabletLayout: true,
            item: _selectedItem,
          ),
        ),
      ],
    );
  }
}

class ItemListing extends StatelessWidget {
  ItemListing({
    required this.itemSelectedCallback,
    required this.state,
    required this.scrollController,
    this.selectedItem,
  });

  final PersonsState state;
  final ValueChanged<PersonsInfo> itemSelectedCallback;
  final PersonsInfo? selectedItem;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return index >= state.person.personsInfo!.length
            ? const BottomLoader()
            : ListTile(
                subtitle: Text(
                    '${state.person.personsInfo![index].firstName} '
                    '${state.person.personsInfo![index].lastName}',
                    style: textTheme.bodySmall),
                leading: Image.network(
                  state.person.personsInfo![index].picture ?? '',
                  height: 100,
                  width: 100,
                ),
                title: Text(state.person.personsInfo![index].title ?? ''),
                // isThreeLine: true,
                // subtitle: Text(personInfo.title),
                dense: true,
                onTap: () =>
                    itemSelectedCallback(state.person.personsInfo![index]),
                selected: selectedItem == state.person.personsInfo![index],
              );

        // PersonListItem(
        //         personInfo: state.person.personsInfo![index],
        //       );
      },
      itemCount: state.person.personsInfo!.length,
      controller: scrollController,
    );

    //   ListView(
    //   children: items.map((item) {
    //     return ListTile(
    //       title: Text('item.title'),
    //       onTap: () => itemSelectedCallback(item),
    //       selected: selectedItem == item,
    //     );
    //   }).toList(),
    // );
  }
}

class ItemDetails extends StatelessWidget {
  ItemDetails({
    required this.isInTabletLayout,
    required this.item,
  });

  final bool isInTabletLayout;
  final PersonsInfo item;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          item.firstName ?? 'No item selected!',
          style: textTheme.headline1,
        ),
        Text(
          item.lastName ?? 'Please select one on the left.',
          style: textTheme.bodyMedium,
        ),
      ],
    );

    if (isInTabletLayout) {
      return Center(child: content);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Center(child: content),
    );
  }
}

class Item {
  Item({
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;
}

final List<Item> items = <Item>[
  Item(
    title: 'Item 1',
    subtitle: 'This is the first item.',
  ),
  Item(
    title: 'Item 2',
    subtitle: 'This is the second item.',
  ),
  Item(
    title: 'Item 3',
    subtitle: 'This is the third item.',
  ),
];
