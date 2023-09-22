import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBqPC_ut-XX1oCkwAoesMnCNta1kpYlSIU",
            authDomain: "seuscachos-f4d8f.firebaseapp.com",
            projectId: "seuscachos-f4d8f",
            storageBucket: "seuscachos-f4d8f.appspot.com",
            messagingSenderId: "238909373344",
            appId: "1:238909373344:web:63550f9ea2c5b5a47582c5"));
  } else {
    await Firebase.initializeApp();
  }
}
