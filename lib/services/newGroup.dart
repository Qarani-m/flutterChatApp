import 'package:chatapp/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Popup extends StatelessWidget {
  const Popup({super.key});

  @override
  Widget build(BuildContext context) {
  TextEditingController _newGroupTextController = TextEditingController();

    return Center(
      child: Container(
        child: Column(
          children: [
            Text("New Group"),
            // TextField_(obscure: false, hintText: "New Group", icon: Icons.group, controller: _newGroupTextController),
            ElevatedButton(onPressed: (){}, child:Text("create"))
          ],
        ),
        
      ),
    );
  }
}