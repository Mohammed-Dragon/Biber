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
    apiKey: 'AIzaSyDT-HEpMb_un-7kDJdQlo-48VaoKF6qwcg',
    appId: '1:1073846267543:web:2123887881ca22f7e143d2',
    messagingSenderId: '1073846267543',
    projectId: 'biber-169aa',
    authDomain: 'biber-169aa.firebaseapp.com',
    storageBucket: 'biber-169aa.appspot.com',
    measurementId: 'G-H0TGYGKYP2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAk1UDxJgGiUNpaUriv7wuWMc0fHQRJrVQ',
    appId: '1:1073846267543:android:fd4ed29949a3d155e143d2',
    messagingSenderId: '1073846267543',
    projectId: 'biber-169aa',
    storageBucket: 'biber-169aa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvoXZ7O8QsPb0guBB-Ij0O_SRb-mLftNo',
    appId: '1:1073846267543:ios:acbb6cc2d1ca3cf9e143d2',
    messagingSenderId: '1073846267543',
    projectId: 'biber-169aa',
    storageBucket: 'biber-169aa.appspot.com',
    iosBundleId: 'com.example.dragonWork',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvoXZ7O8QsPb0guBB-Ij0O_SRb-mLftNo',
    appId: '1:1073846267543:ios:acbb6cc2d1ca3cf9e143d2',
    messagingSenderId: '1073846267543',
    projectId: 'biber-169aa',
    storageBucket: 'biber-169aa.appspot.com',
    iosBundleId: 'com.example.dragonWork',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDT-HEpMb_un-7kDJdQlo-48VaoKF6qwcg',
    appId: '1:1073846267543:web:dc93fa729e85ce03e143d2',
    messagingSenderId: '1073846267543',
    projectId: 'biber-169aa',
    authDomain: 'biber-169aa.firebaseapp.com',
    storageBucket: 'biber-169aa.appspot.com',
    measurementId: 'G-EX2HKNZ135',
  );
}
