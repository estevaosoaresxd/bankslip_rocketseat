import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAtnyDZn_ISJCX4qPkBarCmc7tbfdJzql8',
    appId: '1:866129575987:web:b8e660817bbf6937ee2346',
    messagingSenderId: '866129575987',
    projectId: 'payflow-e020f',
    authDomain: 'payflow-e020f.firebaseapp.com',
    storageBucket: 'payflow-e020f.appspot.com',
    measurementId: 'G-W61GYGMHVS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7Lhq5XWpmKRTYjABFBSwXLjXdsTWOOHs',
    appId: '1:866129575987:android:981f4f292c30bd07ee2346',
    messagingSenderId: '866129575987',
    projectId: 'payflow-e020f',
    storageBucket: 'payflow-e020f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6qj51uEslGOQeBVhL84GVG32L70jGHn8',
    appId: '1:866129575987:ios:b009b98766a02a5aee2346',
    messagingSenderId: '866129575987',
    projectId: 'payflow-e020f',
    storageBucket: 'payflow-e020f.appspot.com',
    androidClientId:
        '866129575987-dvc26tcegqhijioasd3rke5ohff1g1vf.apps.googleusercontent.com',
    iosClientId:
        '866129575987-41jiu758ms04poutbmpip1tv8qnimqo9.apps.googleusercontent.com',
    iosBundleId: 'n',
  );
}
