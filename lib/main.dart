import 'package:chatapp/screens/home_page_.dart';
import 'package:chatapp/screens/signup.dart';
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
        scaffoldBackgroundColor: const Color(0xfffff),
        primaryColor: Constants.primaryColor,
        ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const SignUp(),
    );
  }
}