import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/models.dart';

class PersonListItem extends StatelessWidget {
  const PersonListItem({Key? key, required this.personInfo}) : super(key: key);

  // final Person person;
  final PersonsInfo personInfo;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      child: InkWell(
        onTap: () {
          context.goNamed('person', params: {'id': personInfo.id ?? ''});
        },
        child: ListTile(
          subtitle: Text('${personInfo.firstName} ' '${personInfo.lastName}',
              style: textTheme.bodySmall),
          leading: Image.network(
            personInfo.picture ?? '',
            height: 100,
            width: 100,
          ),
          title: Text(personInfo.title ?? ''),
          // isThreeLine: true,
          // subtitle: Text(personInfo.title),
          dense: true,
        ),
      ),
    );
  }
}
