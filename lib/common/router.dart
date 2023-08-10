import 'package:bloc_starter_test/common/scaffold_tab.dart';
import 'package:bloc_starter_test/common/screens/first_route.dart';
import 'package:bloc_starter_test/common/screens/third_route.dart';
import 'package:bloc_starter_test/features/persons/screens/persons_screen.dart';
import 'package:bloc_starter_test/features/posts/posts.dart';
import 'package:bloc_starter_test/features/single_person/screens/single_person_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/screens.dart';
import 'widgets/widgets.dart';

/* * * * * * * * * * * *
*
* /home
* /pages
*     /pages/1
*     /pages/2
*     ...
*     /pages/test
*
* * * * * * * * * * * */
const String homeRoute = '/';
const String pagesRoute = '/pages';
const String postsRoute = '/posts';
const String personsRoute = '/persons/:id';
// const String personRoute = '/person';
const String pagesDynamicRoute = ':id';
const String firstPageRoute = '/pages/1';
const String pageOne = '/page_one';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: homeRoute,
  errorBuilder: (context, state) => ErrorScreen(state.error),
  // routes: <RouteBase>[
  //   /// Application shell
  //   ShellRoute(
  //     navigatorKey: _shellNavigatorKey,
  //     builder: (BuildContext context, GoRouterState state, Widget child) {
  //       return ScaffoldWithNavBar(child: child);
  //     },
  //     routes: <RouteBase>[
  //         GoRoute(
  //           path: homeRoute,
  //           pageBuilder: (context, state) => _TransitionPage(
  //             key: state.pageKey,
  //             child: const HomeScreen(),
  //           ),
  //         ),
  //       /// The first screen to display in the bottom navigation bar.
  //       GoRoute(
  //         path: '/a',
  //         builder: (BuildContext context, GoRouterState state) {
  //           return const ScreenA();
  //         },
  //         routes: <RouteBase>[
  //           // The details screen to display stacked on the inner Navigator.
  //           // This will cover screen A but not the application shell.
  //           GoRoute(
  //             path: 'details',
  //             builder: (BuildContext context, GoRouterState state) {
  //               return const DetailsScreen(label: 'A');
  //             },
  //           ),
  //         ],
  //       ),
  //
  //       /// Displayed when the second item in the the bottom navigation bar is
  //       /// selected.
  //       GoRoute(
  //         path: '/b',
  //         builder: (BuildContext context, GoRouterState state) {
  //           return const ScreenB();
  //         },
  //         routes: <RouteBase>[
  //           /// Same as "/a/details", but displayed on the root Navigator by
  //           /// specifying [parentNavigatorKey]. This will cover both screen B
  //           /// and the application shell.
  //           GoRoute(
  //             path: 'details',
  //             parentNavigatorKey: _rootNavigatorKey,
  //             builder: (BuildContext context, GoRouterState state) {
  //               return const DetailsScreen(label: 'B');
  //             },
  //           ),
  //         ],
  //       ),
  //
  //       /// The third screen to display in the bottom navigation bar.
  //       GoRoute(
  //         path: '/c',
  //         builder: (BuildContext context, GoRouterState state) {
  //           return const ScreenC();
  //         },
  //         routes: <RouteBase>[
  //           // The details screen to display stacked on the inner Navigator.
  //           // This will cover screen A but not the application shell.
  //           GoRoute(
  //             path: 'details',
  //             builder: (BuildContext context, GoRouterState state) {
  //               return const DetailsScreen(label: 'C');
  //             },
  //           ),
  //         ],
  //       ),
  //     ],
  //   ),
  // ],
  routes: [
    GoRoute(
      name: 'persons',
      path: personsRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const PersonsScreen(id: '0'),
      ),
      routes: [
        GoRoute(
          path: ':fid',
          builder: (context, state) {
            final id = state.params['id']!;
            return SinglePersonScreen(
              id: id.toString(),
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: pageOne,
      parentNavigatorKey: _rootNavigatorKey,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          _TransitionPage(
        key: state.pageKey,
        child: const NestedNavScafold(
          selectedTab: ScaffoldTab.pageOne,
          child: FirstRoute(),
        ),
      ),
      routes: [
        GoRoute(
            path: ':routeId',
            parentNavigatorKey: _rootNavigatorKey,
            builder: (BuildContext context, GoRouterState state) {
              return ThirdRoute();
            }),
      ],
    ),
    GoRoute(
      path: '/page_two',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          _TransitionPage(
        key: state.pageKey,
        child: const NestedNavScafold(
          selectedTab: ScaffoldTab.pageTwo,
          child: FirstRoute(),
        ),
      ),
    ),
    GoRoute(
      path: '/third_route',
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const ThirdRoute(),
      ),
    ),
    GoRoute(
      path: postsRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const PostsScreen(),
      ),
      routes: <RouteBase>[
        GoRoute(
          path: pagesDynamicRoute,
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const PageWidget(),
          ),
        ),
      ],
    ),
    GoRoute(
      path: homeRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const HomeScreen(),
      ),
    ),
    GoRoute(
      path: pagesRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const PagesListScreen(),
      ),
      routes: <RouteBase>[
        GoRoute(
          path: pagesDynamicRoute,
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const PageWidget(),
          ),
        ),
      ],
    ),
  ],
);

class _TransitionPage extends CustomTransitionPage {
  _TransitionPage({LocalKey? key, required Widget child})
      : super(
          key: key,
          child: child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
          // create your own or use an existing one
          // ScaleTransition(scale: animation, child: child),
        );
}

// class ScaffoldWithNavBar extends StatelessWidget {
//   /// Constructs an [ScaffoldWithNavBar].
//   const ScaffoldWithNavBar({
//     required this.child,
//     super.key,
//   });
//
//   /// The widget to display in the body of the Scaffold.
//   /// In this sample, it is a Navigator.
//   final Widget child;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: child,
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'A Screen',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'B Screen',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notification_important_rounded),
//             label: 'C Screen',
//           ),
//         ],
//         currentIndex: _calculateSelectedIndex(context),
//         onTap: (int idx) => _onItemTapped(idx, context),
//       ),
//     );
//   }
//
//   static int _calculateSelectedIndex(BuildContext context) {
//     final String location = GoRouterState.of(context).location;
//     if (location.startsWith('/a')) {
//       return 0;
//     }
//     if (location.startsWith('/b')) {
//       return 1;
//     }
//     if (location.startsWith('/c')) {
//       return 2;
//     }
//     return 0;
//   }
//
//   void _onItemTapped(int index, BuildContext context) {
//     switch (index) {
//       case 0:
//         GoRouter.of(context).go('/a');
//         break;
//       case 1:
//         GoRouter.of(context).go('/b');
//         break;
//       case 2:
//         GoRouter.of(context).go('/c');
//         break;
//     }
//   }
// }

/// The first screen in the bottom navigation bar.
class ScreenA extends StatelessWidget {
  /// Constructs a [ScreenA] widget.
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Screen A'),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/a/details');
              },
              child: const Text('View A details'),
            ),
          ],
        ),
      ),
    );
  }
}

/// The second screen in the bottom navigation bar.
class ScreenB extends StatelessWidget {
  /// Constructs a [ScreenB] widget.
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Screen B'),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/b/details');
              },
              child: const Text('View B details'),
            ),
          ],
        ),
      ),
    );
  }
}

/// The third screen in the bottom navigation bar.
class ScreenC extends StatelessWidget {
  /// Constructs a [ScreenC] widget.
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Screen C'),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/c/details');
              },
              child: const Text('View C details'),
            ),
          ],
        ),
      ),
    );
  }
}

/// The details screen for either the A, B or C screen.
class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen].
  const DetailsScreen({
    required this.label,
    super.key,
  });

  /// The label to display in the center of the screen.
  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
      body: Center(
        child: Text(
          'Details for $label',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
