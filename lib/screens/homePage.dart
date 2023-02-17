// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chatapp/screens/login.dart';
import 'package:chatapp/widgets/newRoom.dart';
import 'package:chatapp/widgets/textField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _newGroupTextController = TextEditingController();
    int _selectedIndex=0;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text("Groups"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap:(value){
            
          },
          items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.home_max_sharp),
          label: ""
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: ""
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.group
          ),
          label: ""
          )
        ]),
      ),

      drawer: Drawer(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70)
                    ),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage:AssetImage("login.png"),
                      ),
                   
                  ),
                   Padding(
                      padding: const EdgeInsets.only(top:30),
                      child: Text("Martin Karani",style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.w600,
                        
                      ),),
                    ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.65,
              // color: Colors.blue,
              alignment: Alignment.center,
              child: ListView(
                children: [
                  ListTile(
                    textColor: Colors.cyan,
                    title: Text("Groups"),
                    leading: Icon(Icons.group),
                  ),
                  ListTile(
                    textColor: Colors.cyan,
                    title: Text("Profile"),
                    leading: Icon(Icons.person_sharp),
                  ),
                  GestureDetector(
                     onTap: (){
                      FirebaseAuth.instance.signOut().then((value) {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                      });
                    },
                    child: ListTile(
                      textColor: Colors.cyan,
                      title: Text("LogOUt"),
                      leading: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ],
              ),


            )
          ],
        ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left:10,top:10),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xFFdc143c),
                  child: Text("Y"),
                  ),
                title: Text("Group name",style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),),
                subtitle: Text("You joined this group and therefpre you are going to die",maxLines: 1,softWrap: true,),
              ),
            
          ]),
          
        ),
    );
  // }


  }
}
