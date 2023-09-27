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
    apiKey: 'AIzaSyC3-Aq_Ct8O0AwD-rt6z931ZHgGkXgy1I8',
    appId: '1:576264281621:web:98bd039c0cc45d298f381c',
    messagingSenderId: '576264281621',
    projectId: 'game-test-4732e',
    authDomain: 'game-test-4732e.firebaseapp.com',
    storageBucket: 'game-test-4732e.appspot.com',
    measurementId: 'G-56CVEPFZGX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAoGchLBwKSLuzcNjxBEpqnuy0OP7T8vps',
    appId: '1:576264281621:android:dc499762b33fdc9e8f381c',
    messagingSenderId: '576264281621',
    projectId: 'game-test-4732e',
    storageBucket: 'game-test-4732e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCo5uRgqW3jG_2hZUS2-6NFZaug7ye99Go',
    appId: '1:576264281621:ios:e34520cd8f98c39b8f381c',
    messagingSenderId: '576264281621',
    projectId: 'game-test-4732e',
    storageBucket: 'game-test-4732e.appspot.com',
    iosBundleId: 'com.example.gameProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCo5uRgqW3jG_2hZUS2-6NFZaug7ye99Go',
    appId: '1:576264281621:ios:5ad1e182119977848f381c',
    messagingSenderId: '576264281621',
    projectId: 'game-test-4732e',
    storageBucket: 'game-test-4732e.appspot.com',
    iosBundleId: 'com.example.gameProject.RunnerTests',
  );
}
