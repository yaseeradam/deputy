import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAYvqUfshUrcNzlnjva5dX3u99A_39XJn0',
    appId: '1:784183067097:web:c4ef2056409f29431019c8',
    messagingSenderId: '784183067097',
    projectId: 'deputy-639a0',
    authDomain: 'deputy-639a0.firebaseapp.com',
    storageBucket: 'deputy-639a0.firebasestorage.app',
    measurementId: 'G-L1CSK1LCGX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCaLlf01NUB9mVQzpQJyU2dlM8vx-45-yA',
    appId: '1:784183067097:android:5963c31692f9a1371019c8',
    messagingSenderId: '784183067097',
    projectId: 'deputy-639a0',
    storageBucket: 'deputy-639a0.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4d1jpdiFDYKvoHOTwvdhcwy7RKRvyq7E',
    appId: '1:784183067097:ios:01a0374b921f2f401019c8',
    messagingSenderId: '784183067097',
    projectId: 'deputy-639a0',
    storageBucket: 'deputy-639a0.firebasestorage.app',
    iosBundleId: 'com.deputyenterprises.shopmanager',
  );
}
