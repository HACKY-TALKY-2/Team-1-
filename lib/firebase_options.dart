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
    apiKey: 'AIzaSyCZa96WG-DKvCRVhtA9HF5xorGH_7csIqc',
    appId: '1:581726238939:web:a85040bf95796968ff74fe',
    messagingSenderId: '581726238939',
    projectId: 'seoul-tree-corp',
    authDomain: 'seoul-tree-corp.firebaseapp.com',
    storageBucket: 'seoul-tree-corp.appspot.com',
    measurementId: 'G-SCQWMT7K4B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCasuPAR0e3HU3fPLVhguvW3l9VpIW79Kc',
    appId: '1:581726238939:android:8803108ab912667eff74fe',
    messagingSenderId: '581726238939',
    projectId: 'seoul-tree-corp',
    storageBucket: 'seoul-tree-corp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGli_632fjSpavqSQk0ampBLwdbfVb7v8',
    appId: '1:581726238939:ios:01a1de1ee8c82bdcff74fe',
    messagingSenderId: '581726238939',
    projectId: 'seoul-tree-corp',
    storageBucket: 'seoul-tree-corp.appspot.com',
    androidClientId: '581726238939-2vvn1ku9cqgb6p0e7pnv2if2lfd07oeg.apps.googleusercontent.com',
    iosClientId: '581726238939-4qbu46ohni4o7454qqsqbmced0i7vo5f.apps.googleusercontent.com',
    iosBundleId: 'dev.sboh.namu',
  );
}
