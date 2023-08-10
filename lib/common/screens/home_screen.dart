import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_starter_test/common/router.dart';
import 'package:bloc_starter_test/features/posts/services/services.dart';
import 'package:go_router/go_router.dart';

import '../../features/theme/bloc/theme_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                FilledButton(
                  onPressed: () {
                    context.go(pagesRoute);
                  },
                  child: const Text('Go to List Of Pages'),
                ),
                const SizedBox(height: 8),
                FilledButton(
                  onPressed: () {
                    context.read<ThemeBloc>().switchTheme();
                  },
                  child: const Text('Switch Theme'),
                ),
                const SizedBox(height: 8),
                FilledButton(
                  onPressed: () {
                    context.go(postsPath);
                  },
                  child: const Text('Posts'),
                ),
                FilledButton(
                  onPressed: () {
                    context.goNamed('persons',params: {'id': 'list'});

                  },
                  child: const Text('Persons'),
                ),
                FilledButton(
                  onPressed: () {
                    context.go(pageOne);
                  },
                  child: const Text('Page One'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
