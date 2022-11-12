import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class FirebaseOptionsDev {
  static FirebaseOptions get current {
    if (kIsWeb) {
      throw UnsupportedError('Platform not supported.');
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return _android;
      case TargetPlatform.iOS:
        return _ios;
      default:
        throw UnsupportedError('Platform not supported.');
    }
  }

  static const FirebaseOptions _android = FirebaseOptions(
    apiKey: 'AIzaSyD6nZc6qKTJXsrT0eLZeStEEXKVSfUz98w',
    appId: '1:871626441910:android:c05512afe70f8e06329217',
    messagingSenderId: '871626441910',
    projectId: 'steady-academy-1e343',
    storageBucket: 'steady-academy-1e343.appspot.com',
  );

  static const FirebaseOptions _ios = FirebaseOptions(
    apiKey: 'AIzaSyC-hxOy2TISiwavC6FMYBit6XhEr6EKvNE',
    appId: '1:871626441910:ios:74df8bc90f57e152329217',
    messagingSenderId: '871626441910',
    projectId: 'steady-academy-1e343',
    storageBucket: 'steady-academy-1e343.appspot.com',
    iosClientId:
        '871626441910-17g4laou8rvten2pankus0dt10n41v6b.apps.googleusercontent.com',
    iosBundleId: 'com.steady.academy.mobile',
  );
}
