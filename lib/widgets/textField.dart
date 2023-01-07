// ignore_for_file: file_names, prefer_const_constructors

import 'package:chatapp/shared/constants.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



// TEXT FIELDS
class TextField_ extends StatelessWidget {
  final bool obscure;
  final String hintText;
  final IconData icon;
  final Color enabledBorderColor = Constants.enabledBorderColor;
  final Color focusedBorderColor = Constants.focusedBorderColor;
  final Color errorBorderColor = Constants.errorBorderColor;
  final TextEditingController controller;
 TextField_({
    super.key,
    required this.obscure,
    required this.hintText,
    required this.icon,
    required this.controller
     });

  @override
  Widget build(BuildContext context) {
    return TextField(
                  controller: controller,
                  showCursor: false,
                  obscureText: obscure,
                  decoration: InputDecoration(
                    prefixIcon: Icon(icon,color: Constants.primaryColor,),
                    hintText: hintText,
                    hintStyle: TextStyle(fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: enabledBorderColor,
                          width: 1.0,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: focusedBorderColor,
                          width: 1.0,
                        )),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: errorBorderColor,
                          width: 1.0,
                        )),
                  ),
                );
  }
}

// LOGIN & SIGNUP BUTTON
class LoginSignUpBtn extends StatelessWidget {
  final double btn_width; 
  final double btn_height; 
  final Color backgroundColor = Constants.primaryColor;
  final double elevation;
  final String text;
  final Function onPressed;
   LoginSignUpBtn({
    super.key,
    required this.btn_width,
    required this.btn_height,
    required this.elevation,
    required this.text,
    required this.onPressed
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btn_height,
      width:btn_width,
      child: ElevatedButton(
        onPressed:(){onPressed();},
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: StadiumBorder(),
            elevation: elevation,
            textStyle: const TextStyle(color: Colors.white)),
        child: Text(text),
      ),
    );
  }
}


// DONT HAVE AN ACCOUNT
class Account extends StatelessWidget {
  final double width;
  final double height;
  final String text1;
  final String text2;
  final Function onTap;

  final Color text1Color=Constants.secondaryColor;
  final Color text2Color=Constants.primaryColor;
   Account({
    super.key,
    required this.width,
    required this.height,
    required this.text1,
    required this.text2,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){onTap();},
      child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    alignment: Alignment.center,
                    child: RichText(text: TextSpan(
                      text: text1,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: text1Color,
                      ),
                      children: [
                        TextSpan(
                          text: text2,
                          style: TextStyle(
                            color: text2Color,
                            fontSize: 14,
                        fontWeight: FontWeight.bold,
    
                          ),
                        )
                      ]
                    )),
                  ),
    );
  }
}


// Groupie
class Groupie extends StatelessWidget {
  final String text;
  final String image;
   Groupie({
    super.key,
    required this.image,
    required this.text,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
                  child: Column(
                    children: [
                      const Text (
                  "Groupie",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox( height: 10),
                 Text(
                  text,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Image(height: 200, image: AssetImage(image)),

                    ],
                  ),
                );
  }
}