// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage_ extends StatefulWidget {
  const HomePage_({super.key});
  @override
  State<HomePage_> createState() => _HomePage_State();
}
class _HomePage_State extends State<HomePage_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group name"),
        leading: BackButton(color: Colors.red,onPressed: (){},),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              
            },
            child: Padding(
              padding: const EdgeInsets.only(right:18),
              child: Icon(Icons.info_sharp),
            ),
          )
        ],
        
      ), 
      body: Column(
        
        children: [
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height*0.85,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                  // recv
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text("hello there my anme is martin and i hate what i do and i hope tehat thres no ke"),
                    decoration: BoxDecoration(
                      color:Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                        )

                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(" ke"),
                    decoration: BoxDecoration(
                      color:Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                        )

                    ),
                  ),
                  SizedBox(height: 15,),

                  Container(
                    padding: EdgeInsets.all(10),
                      child: Text("hello there my anme is martin and i hate what i do and i hope tehat thres no ke"),
                    decoration: BoxDecoration(
                      color:Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                        )

                    ),
                  )

                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
             child:TextField(
                  showCursor: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_sharp),
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 15),
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
                  ),
                ),

          )
        ],
      ), 
      
    );
  }
}