import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
//Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grow_run_v1/service_locator.dart';
import 'package:logging/logging.dart';

import 'app.dart';

Future<void> main() async {
  //init firebase
  WidgetsFlutterBinding.ensureInitialized();
  //wait for it to init
  await Firebase.initializeApp();
  // init logger
  Logger.root.level = Level.ALL;
  //for now debug msgs are displayed in the terminal
  Logger.root.onRecord.listen((LogRecord record) {
    print('${record.level.name}: ${record.loggerName}: ${record.message}');
  });

// launch the app
  runApp(const App());
}
