// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'firebase_options.dart';
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
    apiKey: 'AIzaSyDnB2o1JoNNsxSwHsDLR2ZamiqiSIkOACo',
    appId: '1:736101483652:web:e1ec09c8f2291ccd97aed1',
    messagingSenderId: '736101483652',
    projectId: 'laundry-vai-13b0f',
    authDomain: 'laundry-vai-13b0f.firebaseapp.com',
    storageBucket: 'laundry-vai-13b0f.appspot.com',
    measurementId: 'G-8N4Y5ZRBVN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwW2yfGPJwKPCXD5XrdQk0Il_6alCttGU',
    appId: '1:736101483652:android:9f0f4bf324e52da397aed1',
    messagingSenderId: '736101483652',
    projectId: 'laundry-vai-13b0f',
    storageBucket: 'laundry-vai-13b0f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSWZyEsQXYTcAhwAix5txm7Ggc08kBMoQ',
    appId: '1:736101483652:ios:00103ef90eec381a97aed1',
    messagingSenderId: '736101483652',
    projectId: 'laundry-vai-13b0f',
    storageBucket: 'laundry-vai-13b0f.appspot.com',
    iosBundleId: 'com.aaa.laundryVai',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDSWZyEsQXYTcAhwAix5txm7Ggc08kBMoQ',
    appId: '1:736101483652:ios:00103ef90eec381a97aed1',
    messagingSenderId: '736101483652',
    projectId: 'laundry-vai-13b0f',
    storageBucket: 'laundry-vai-13b0f.appspot.com',
    iosBundleId: 'com.aaa.laundryVai',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDnB2o1JoNNsxSwHsDLR2ZamiqiSIkOACo',
    appId: '1:736101483652:web:9d9919249bd8173297aed1',
    messagingSenderId: '736101483652',
    projectId: 'laundry-vai-13b0f',
    authDomain: 'laundry-vai-13b0f.firebaseapp.com',
    storageBucket: 'laundry-vai-13b0f.appspot.com',
    measurementId: 'G-KYG1CBRV59',
  );
}
