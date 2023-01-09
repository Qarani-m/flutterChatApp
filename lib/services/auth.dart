import 'package:chatapp/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices{
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;


  // register
  Future registerUserWithEmailandPassword(String fullname, String email,String password) async{
      try{
          User? user = (await firebaseAuth.createUserWithEmailAndPassword(
            email: email, 
            password: password
            )).user;

            if(user != null){
             await  DatabaseService(uid: user.uid).UpdateUserData(fullname,email);
              return true;
            }
      } on FirebaseAuthException catch(e){
        print(e);
        return e;
      }
  }

}