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
    apiKey: 'AIzaSyAWvBWKft9axOcS4OGUGaiSSzFKyteLnkg',
    appId: '1:907995658754:web:88fe27c80d8157fc2ec51b',
    messagingSenderId: '907995658754',
    projectId: 'crypto-flutter-2b80c',
    authDomain: 'crypto-flutter-2b80c.firebaseapp.com',
    storageBucket: 'crypto-flutter-2b80c.appspot.com',
    measurementId: 'G-FYX0YRXP97',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArmFPYDIPYU8f41Ff-7wyUG2IQoIzhhOw',
    appId: '1:907995658754:android:8a0546846f3442212ec51b',
    messagingSenderId: '907995658754',
    projectId: 'crypto-flutter-2b80c',
    storageBucket: 'crypto-flutter-2b80c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzSzGXONraPgC2pCuZ103FNLB4_ViHD6I',
    appId: '1:907995658754:ios:3f2192b606ad717a2ec51b',
    messagingSenderId: '907995658754',
    projectId: 'crypto-flutter-2b80c',
    storageBucket: 'crypto-flutter-2b80c.appspot.com',
    iosBundleId: 'com.example.cryptoCurrency',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCzSzGXONraPgC2pCuZ103FNLB4_ViHD6I',
    appId: '1:907995658754:ios:0f8894ef0d3b6c072ec51b',
    messagingSenderId: '907995658754',
    projectId: 'crypto-flutter-2b80c',
    storageBucket: 'crypto-flutter-2b80c.appspot.com',
    iosBundleId: 'com.example.cryptoCurrency.RunnerTests',
  );
}
