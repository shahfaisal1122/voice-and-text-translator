import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:voice_and_text_translator/firebase_options.dart';
import 'package:voice_and_text_translator/pages/auth_wrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    if (!kIsWeb && Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    } else if (kIsWeb) {
      await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: "AIzaSyDp-WBRT4qOi30l10sf9Lwt8ditzmqL_xU",
          authDomain: "voice-and-text-translato-71bd9.firebaseapp.com",
          databaseURL: "https://voice-and-text-translato-71bd9-default-rtdb.firebaseio.com",
          projectId: "voice-and-text-translato-71bd9",
          storageBucket: "voice-and-text-translato-71bd9.appspot.com",
          messagingSenderId: "410409893851",
          appId: "1:410409893851:web:1d90cb1939fe7dda5131fe",
          measurementId: "G-JKPH4KSNXB",
        ),
      );
    }
    print("Firebase initialized successfully");
  } catch (e) {
    print("Error initializing Firebase: $e");
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: AuthWrapper(),
      ),
    );
  }
}