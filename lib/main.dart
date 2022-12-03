import 'package:e_mart_mobile/create_profile.dart';
import 'package:e_mart_mobile/dashboard.dart';
import 'package:e_mart_mobile/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login/phone.dart';
import 'login/verify.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'home' : (context) => MyHome(),
      'createprofile' :(context) => CreateProfile(),
      'dashboard' :(context) => Dashboard(),
    },
  );
  }
}