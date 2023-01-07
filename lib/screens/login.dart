// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:chatapp/screens/homePage.dart';
import 'package:chatapp/screens/signup.dart';
import 'package:chatapp/widgets/textField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // SingleChildScrollView(child:
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Groupie(image: "login.png", text: "Login in now for nice stuff"),
                SizedBox(height: 10),
                TextField_(obscure: false,hintText: "Email",icon: Icons.email,controller: _emailTextController,),
                SizedBox(height: 20),
                TextField_(obscure: true,hintText: "password",icon: Icons.password_sharp,controller:_passwordTextController,),
                SizedBox(height: 30),
                LoginSignUpBtn(btn_height:50,btn_width:MediaQuery.of(context).size.width * 0.8,elevation: 12.0,text: "Login",onPressed: (){
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text,password: _passwordTextController.text).then((value) {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  });
                },),
                SizedBox(height: 30,),
                Account(width: MediaQuery.of(context).size.width, height: 30, text1: "Dont have an acacount? ", text2: "SignUp",onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                },),
              ],
            ),
          ),
        ),
      // ),
    );
  }
}
