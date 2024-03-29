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
        return macos;
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
    apiKey: 'AIzaSyBzPBySN7yn0xWYz7HY2p-sKwBSelGf_Vk',
    appId: '1:16882971124:web:4e0e8b2405ae7e699b49a1',
    messagingSenderId: '16882971124',
    projectId: 'chat-3a2d3',
    authDomain: 'chat-3a2d3.firebaseapp.com',
    storageBucket: 'chat-3a2d3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBW96eq9uyRTHjaKGbzbmYrKlGekkYfCcw',
    appId: '1:16882971124:android:c73d0d92c89398b79b49a1',
    messagingSenderId: '16882971124',
    projectId: 'chat-3a2d3',
    storageBucket: 'chat-3a2d3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWP55Bs9EnaS3G4jfRZRJP8bwz1RqCxMs',
    appId: '1:16882971124:ios:86c2d61ea83b8d989b49a1',
    messagingSenderId: '16882971124',
    projectId: 'chat-3a2d3',
    storageBucket: 'chat-3a2d3.appspot.com',
    iosBundleId: 'com.example.myPortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWP55Bs9EnaS3G4jfRZRJP8bwz1RqCxMs',
    appId: '1:16882971124:ios:6dba1eb76c0b787b9b49a1',
    messagingSenderId: '16882971124',
    projectId: 'chat-3a2d3',
    storageBucket: 'chat-3a2d3.appspot.com',
    iosBundleId: 'com.example.myPortfolio.RunnerTests',
  );
}
