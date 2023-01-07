import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  get formKey => null;

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
                const Text(
                  "Groupie",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Login in now for nice stuff",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Image(height: 200, image: AssetImage("login.png")),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  showCursor: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1.0,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        )),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 1.0,
                        )),
                    prefixIcon: Icon(Icons.email_sharp),
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const TextField(
                  showCursor: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1.0,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        )),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 1.0,
                        )),
                    prefixIcon: Icon(Icons.password_sharp),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFdc143c),
                        shape: StadiumBorder(),
                        elevation: 12.0,
                        textStyle: const TextStyle(color: Colors.white)),
                    child: const Text('Elevated Button'),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  // color: Colors.red,
                  alignment: Alignment.center,
                  child: RichText(text: TextSpan(
                    text: "Dont have an acacount? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black45,
                    ),
                    children: [
                      TextSpan(
                        text: "SignUp",
                        style: TextStyle(
                          color: Color(0xFFdc143c),
                          fontSize: 14,
                        ),
                      )
                    ]
                  )),
                ),
              ],
            ),
          ),
        ),
      // ),
    );
  }
}