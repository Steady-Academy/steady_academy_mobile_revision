import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import 'constants/firebase_options.dart';
import 'data/user_auth.dart';
import 'steady_academy.dart';

// import 'dart:io' show Platform; // Its required for emulator
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
//
// import 'config/firebase_options.dart';
//
// // Outside of any class or methods, before main()
// const bool _useEmulator = true;
//
// void main() async {
//   //  concrete binding for applications based on the Widgets framewor
//   WidgetsFlutterBinding.ensureInitialized();
// // Initialize Firebase
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
// // Set app to run on firebase emulator
//   if (_useEmulator) {
//     await _connectToEmulator();
//   }
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   int _counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('App bar'),
//         ),
//         body: const Center(
//           child: Text("Flutter Fireabse Connection App"),
//         ));
//   }
// }
//
// // Settings for firebase emulator connection
// Future _connectToEmulator() async {
//   // Provide url to the emulator, localhost might not work on android emulator.
//   final host = Platform.isAndroid ? '22.0.4.08' : 'localhost'; //#1
//   // Provide port for all the local emulator prodcuts
//   // #2
//   const authPort = 9099;
//   const firestorePort = 8080;
//   const storagePort = 9199;
//
//   // Just to make sure we're running locally
//   print("I am running on emulator");
//
//   // Instruct all the relevant firebase products to use the firebase emulator
//   // # 3
//   await FirebaseAuth.instance.useAuthEmulator(host, authPort);
//   FirebaseFirestore.instance.useFirestoreEmulator(host, firestorePort);
//   FirebaseStorage.instance.useStorageEmulator(host, storagePort);
// }
void main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: binding);

  await _initFirebase();

  runApp(const SteadyAcademy());
}

Future<void> _initFirebase() async {
  final opts = FirebaseOptionsDev.current;

  await Firebase.initializeApp(options: opts);
  Get.put(AuthController());
}
