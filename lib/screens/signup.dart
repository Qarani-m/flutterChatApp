// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:chatapp/screens/homePage.dart';
import 'package:chatapp/screens/login.dart';
import 'package:chatapp/services/auth.dart';
import 'package:chatapp/shared/constants.dart';
import 'package:chatapp/widgets/textField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  bool _isLoading =false;
  AuthServices authServices = AuthServices();

    TextEditingController _usernameTextController = TextEditingController();
    TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading? Center(child: CircularProgressIndicator(color: Constants.primaryColor,)): Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               
                Groupie(image: "signup.png", text: "Login in now for nice stuff"),
                SizedBox( height: 10,),
                TextField_(obscure: false, hintText: "Full names", icon: Icons.person,controller: _usernameTextController,),
                SizedBox(height: 20,),
                TextField_(obscure: false, hintText: "email", icon: Icons.email_sharp,controller:_emailTextController ,),
                SizedBox(height: 20,),
                TextField_(obscure: true, hintText: "password", icon: Icons.password_sharp,controller: _passwordTextController,),
                SizedBox(height: 30,),
                LoginSignUpBtn(btn_width: MediaQuery.of(context).size.width * 0.8, btn_height: 50, elevation: 12.0, text: "Sign up",onPressed: (){
                  Signup();
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email:_emailTextController.text,
                    password:_passwordTextController.text
                    ).then((value) {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    }).onError((error, stackTrace){
                      
                    });
                  
                }),
                SizedBox(height: 30,),
                Account(width: MediaQuery.of(context).size.width, height: 30, text1: "Already have an acacount? ", text2: "Login",onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },),
              ],
            ),
          ), 
        ),
    );
  }


 Signup() async{
  if(formKey.currentState!.validate()){
    setState((){
      _isLoading =true;

    });

    }
  }

}
// }
