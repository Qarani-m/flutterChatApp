// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:chatapp/screens/homePage.dart';
import 'package:chatapp/screens/signup.dart';
import 'package:chatapp/shared/constants.dart';
import 'package:chatapp/widgets/textField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  bool _isLoading =false;
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  _emailOnchanged() {
    setState(() {
      String email = _emailTextController.text;
      print(email); 
    });

}

  @override
  Widget build(BuildContext context) {
    String email;
    bool error_ =false;
    return Scaffold(
      body:
      // SingleChildScrollView(child:
          _isLoading? Center(child: CircularProgressIndicator(color: Constants.primaryColor,)):Padding(
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
                TextField_(obscure: true,hintText: "password",icon: Icons.lock,controller:_passwordTextController,),
                SizedBox(height: 30),
                LoginSignUpBtn(btn_height:50,btn_width:MediaQuery.of(context).size.width * 0.8,elevation: 12.0,text: "Login",onPressed: (){
                    Loading();
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

Widget wrongEmail(){
  return(
Account(width: MediaQuery.of(context).size.width, height: 30, text1: "Wrong Email or username ", text2: "SignUp 22",onTap: (){})
  );
}

 Loading() {
  print("sf");
    if(formKey.currentState!.validate()){
    setState((){
      _isLoading =true;
    });
    }
}

}
