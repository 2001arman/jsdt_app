import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jsdt_app/firebase_options.dart';
import 'package:jsdt_app/main.dart';

class Env {
  Env() {
    _init();
  }

  void _init() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // await DependencyInjection.init();

    // FlutterNativeSplash.remove();
    runApp(const MyApp());
  }
}
