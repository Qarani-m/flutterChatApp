// ignore_for_file: duplicate_import, prefer_const_constructors

import 'package:chatapp/screens/homePage.dart';
import 'package:chatapp/screens/login.dart';
import 'package:chatapp/shared/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    await Firebase.initializeApp(options: FirebaseOptions(
    apiKey: Constants.apiKey, 
    appId: Constants.appId, 
    messagingSenderId: Constants.messagingSenderId, 
    projectId: Constants.projectId
    ));
  }else{
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: unnecessary_new
      theme: new ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255,1),
        primaryColor: Constants.primaryColor,
        ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}