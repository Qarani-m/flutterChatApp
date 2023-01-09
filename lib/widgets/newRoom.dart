
import 'package:chatapp/widgets/textField.dart';
import 'package:flutter/material.dart';

class newGroupPopUp extends StatefulWidget {
  const newGroupPopUp({
    Key? key,
    required TextEditingController newGroupTextController,
  }) : _newGroupTextController = newGroupTextController, super(key: key);

  final TextEditingController _newGroupTextController;

  @override
  State<newGroupPopUp> createState() => _newGroupPopUpState();
}

class _newGroupPopUpState extends State<newGroupPopUp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        ),
        width:MediaQuery.of(context).size.width*0.7,
        height:MediaQuery.of(context).size.height*0.23,
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("New Group!",style: TextStyle(fontWeight:FontWeight.w700),),
              SizedBox(height: 20,),
              TextField_(obscure: false, hintText: "New room", icon: Icons.group, controller: widget._newGroupTextController),
              SizedBox(height: 20,),
              
              Row(
                children: [
                  LoginSignUpBtn(btn_width: 105, btn_height: 30, elevation: 2, text: "Private", onPressed: (){
                    setState((){
                      
                    });
                  }),
              SizedBox(width: 20,),
                 
                  LoginSignUpBtn(btn_width: 105, btn_height: 30, elevation: 2, text: "public", onPressed: (){})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}