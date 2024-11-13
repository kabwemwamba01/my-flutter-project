// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyB9lY-FlJCk9JUfW_49X4WPJHSErRXs-H4',
    appId: '1:920168103377:web:57376d8dbc45b9553b74f0',
    messagingSenderId: '920168103377',
    projectId: 'appointment-app-31f1f',
    authDomain: 'appointment-app-31f1f.firebaseapp.com',
    storageBucket: 'appointment-app-31f1f.firebasestorage.app',
    measurementId: 'G-NQDLTJTJGM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhp9mtr9UiHxF4H86QhyS93Ggpq6C4YO0',
    appId: '1:920168103377:android:40ba5f52b1a6fa603b74f0',
    messagingSenderId: '920168103377',
    projectId: 'appointment-app-31f1f',
    storageBucket: 'appointment-app-31f1f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPO_tMVih4DEO1u39n_eV8T510BqcIA8g',
    appId: '1:920168103377:ios:3f9e4c1b7bbe259f3b74f0',
    messagingSenderId: '920168103377',
    projectId: 'appointment-app-31f1f',
    storageBucket: 'appointment-app-31f1f.firebasestorage.app',
    iosBundleId: 'com.example.appointmentsapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPO_tMVih4DEO1u39n_eV8T510BqcIA8g',
    appId: '1:920168103377:ios:3f9e4c1b7bbe259f3b74f0',
    messagingSenderId: '920168103377',
    projectId: 'appointment-app-31f1f',
    storageBucket: 'appointment-app-31f1f.firebasestorage.app',
    iosBundleId: 'com.example.appointmentsapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB9lY-FlJCk9JUfW_49X4WPJHSErRXs-H4',
    appId: '1:920168103377:web:1880efc9970afd103b74f0',
    messagingSenderId: '920168103377',
    projectId: 'appointment-app-31f1f',
    authDomain: 'appointment-app-31f1f.firebaseapp.com',
    storageBucket: 'appointment-app-31f1f.firebasestorage.app',
    measurementId: 'G-MFPXV7VLGP',
  );
}
