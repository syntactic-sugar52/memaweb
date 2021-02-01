

// import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  String uid;
  String firstName;
  String lastName;
  String birthday;
  String gender;
  String email;
  String password;
  DateTime accountCreated;

  Users({this.firstName, this.lastName, this.email, this.password, this.birthday, this.gender, this.accountCreated, this.uid});

// factory Users.fromDocument(DocumentSnapshot doc){
//   return Users(
//     uid: doc["uid"],
//     firstName: doc["firstName"],
//     lastName: doc["lastName"],
//     gender: doc["gender"],
//     birthday: doc["birthday"],
//     email: doc["email"],
//     accountCreated: Timestamp.now()
//   );
// }

}