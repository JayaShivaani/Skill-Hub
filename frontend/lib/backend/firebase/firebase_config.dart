import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAdFcXBW6IWQxwGakBSmizlnU58Ekk_h5c",
            authDomain: "skill-hub-1io3w8.firebaseapp.com",
            projectId: "skill-hub-1io3w8",
            storageBucket: "skill-hub-1io3w8.appspot.com",
            messagingSenderId: "596643047695",
            appId: "1:596643047695:web:903eb7d2a747f484e1367a"));
  } else {
    await Firebase.initializeApp();
  }
}
