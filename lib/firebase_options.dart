// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyButnOL1e7u_UHAvcAQF6ZjhHCKFJjoFuU',
    appId: '1:327832242264:web:81abedcc4ab2441476a22d',
    messagingSenderId: '327832242264',
    projectId: 'blocteststarter',
    authDomain: 'blocteststarter.firebaseapp.com',
    storageBucket: 'blocteststarter.appspot.com',
    measurementId: 'G-34S8X0SF1F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAt5JUZ8j8Xz9eWO20A98sqZr8GKY0Y7NQ',
    appId: '1:327832242264:android:b0209f391111c66f76a22d',
    messagingSenderId: '327832242264',
    projectId: 'blocteststarter',
    storageBucket: 'blocteststarter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBK3kaAvJw_ZWaF5eOQc4vplhBN7kDPPv4',
    appId: '1:327832242264:ios:0107337688d801ba76a22d',
    messagingSenderId: '327832242264',
    projectId: 'blocteststarter',
    storageBucket: 'blocteststarter.appspot.com',
    iosClientId: '327832242264-3rvvv035l8p4r36ggb44h5vmrpttb9bl.apps.googleusercontent.com',
    iosBundleId: 'com.blocStarterTest.ios',
  );
}