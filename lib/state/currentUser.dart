
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mema/model/users.dart';
import 'package:mema/service/database.dart';


class CurrentUser extends ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Users _currentUser = Users();
 
  Users get getCurrentUser => _currentUser;

  // Future<String> onStartUp() async {
  //   String retVal = "error";
  //   try {
  //     User _firebaseUser = await _auth.currentUser;
  //     _currentUser = await Database().getUserInfo(_firebaseUser.uid);
  //     if (_currentUser != null) {
  //       retVal = "success";
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  //   return retVal;
  // }

  // Future<String> signUpUser(
  //     String email, String password, String firstName, String lastName) async {
  //   String retVal = "error";
  //   Users _user = Users();
  //   try {
  //     UserCredential _authResult = await _auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     _user.uid = _authResult.user.uid;
  //     _user.email = _authResult.user.email;
  //     _user.firstName = firstName;
  //     _user.lastName = lastName;
  //     _user.accountCreated = Timestamp.now();
  //     String _returnString = await Database().createUser(_user);
  //     if (_returnString == "success") {
  //       retVal = "success";
  //     }
  //   } on PlatformException catch (e) {
  //     retVal = e.message;
  //   } catch (e) {
  //     retVal = e.message;
  //   }
  //   return retVal;
  // }

  Future<String> onSignOut() async {
    String retVal = "error";
    try {
      await _auth.signOut();

      _currentUser = Users();
      retVal = "success";
    } catch (e) {
      print(e);
    }
    return retVal;
  }

  // Future<String> loginUserWithEmail(String email, String password) async {
  //   String retVal = "error";

  //   try {
  //     UserCredential _authResult = await _auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     _currentUser = await Database().getUserInfo(_authResult.user.uid);
  //     if (_currentUser != null) {
  //       retVal = "success";
  //       print(_currentUser.email);
  //     }
  //   } catch (e) {
  //     retVal = e.message;
  //   }
  //   return retVal;
  // }

  
}
