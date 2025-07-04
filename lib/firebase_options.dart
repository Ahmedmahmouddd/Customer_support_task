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
    apiKey: 'AIzaSyBKmtgNIdDqLPLOmpkZtoZAVtLKrdsNJjk',
    appId: '1:383326271146:web:2c89415c297984df9982d3',
    messagingSenderId: '383326271146',
    projectId: 'customer-support-task',
    authDomain: 'customer-support-task.firebaseapp.com',
    storageBucket: 'customer-support-task.firebasestorage.app',
    measurementId: 'G-57T7GBLLSR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBNEL5TutiUIUFxXR6DU84gw3fiSD2omQ',
    appId: '1:383326271146:android:f05a8fe330546edc9982d3',
    messagingSenderId: '383326271146',
    projectId: 'customer-support-task',
    storageBucket: 'customer-support-task.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_Yu9VY-blCa-sZB70oGoxH9cRHDwT_rw',
    appId: '1:383326271146:ios:8cc40396ec5c94809982d3',
    messagingSenderId: '383326271146',
    projectId: 'customer-support-task',
    storageBucket: 'customer-support-task.firebasestorage.app',
    iosBundleId: 'com.example.customerSupportTask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_Yu9VY-blCa-sZB70oGoxH9cRHDwT_rw',
    appId: '1:383326271146:ios:8cc40396ec5c94809982d3',
    messagingSenderId: '383326271146',
    projectId: 'customer-support-task',
    storageBucket: 'customer-support-task.firebasestorage.app',
    iosBundleId: 'com.example.customerSupportTask',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBKmtgNIdDqLPLOmpkZtoZAVtLKrdsNJjk',
    appId: '1:383326271146:web:19fad050ec53450a9982d3',
    messagingSenderId: '383326271146',
    projectId: 'customer-support-task',
    authDomain: 'customer-support-task.firebaseapp.com',
    storageBucket: 'customer-support-task.firebasestorage.app',
    measurementId: 'G-F92SKE06XD',
  );
}
