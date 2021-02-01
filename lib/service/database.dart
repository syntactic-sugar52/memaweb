


// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mema/model/users.dart';


import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';





Users users = Users();

final Reference storageRef = FirebaseStorage.instance.ref();

class Database {

  // Future<String> createUser(Users users) async {
  //   String retVal = "error";
  //   debugPrint("Creating user");
  //   try {
  //     await usersRef.doc().set({
  //       "uid": users.uid,
      
  //       "email": users.email,
  //       "first_name": "",
  //       "last_name": "",
  //       "gender": users.gender,
  //       "birthdate": users.birthday,
  //       "accountCreated": DateTime.now()
  //     });

  //     // currentUser = Users.fromDocument(doc);
  //     retVal = "success";
  //   } catch (e) {
  //     print(e);
  //   }
  //   return retVal;
  // }


  // Future<Users> getUserInfo(String uid) async {
  //   // to return null when user does not exist
  //   Users retVal;
  //   try {
      
  //     DocumentSnapshot _docSnapshot = await usersRef.doc(uid).get();

  //     // if snapshot exists, the docID is in the collection
  //     if (_docSnapshot.exists) {
  //       // initialize retVal if snapshot exists
  //       retVal = Users();

  //       retVal.uid = _docSnapshot.data()["uid"];
  //       retVal.email = _docSnapshot.data()["email"];
  //       retVal.firstName = _docSnapshot.data()["first_name"];
  //       retVal.lastName = _docSnapshot.data()["last_name"];
  //       retVal.gender = _docSnapshot.data()["gender"];
  //       retVal.birthday = _docSnapshot.data()["birthday"];
    
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  //   return retVal;
  // }

  // Future<bool> inviteCodeExists(String code) async {
  //   final QuerySnapshot snapshot =
  //       await inviteRef.where("code", isEqualTo: code).get();
  //   return snapshot.docs.isNotEmpty;
  // }

  // Future<String> getCurrentUserDocId(String userUid) async {
  //   String retVal = "";
  //   final QuerySnapshot snapshot =
  //       await usersRef.where("user_uids", arrayContains: userUid).get();

  //   var uids = <String>[];

  //   snapshot.docs.forEach((doc) {
  //     uids.add(doc.id);
  //   });

  //   if (uids.length > 1) {
  //     // this should not happen
  //     throw Exception("Multiple users with the same UID have been found.");
  //   } else if (uids.length < 0) {
  //     retVal = "";
  //   } else {
  //     retVal = uids.first;
  //   }

  //   return retVal;
  // }

  // Future<String> updateUser(String docId, Users user) async {
  //   String retVal = "error";
  //   try {
  //     await usersRef.doc(docId).update({
  //       "user_uids": user.userUids,
  //       "first_name": user.firstName,
  //       "last_name": user.lastName,
  //       "address": user.address,
  //       "community_id": user.communityId,
  //       "email": user.email,
  //       //"profile_photo" : "",
  //     });
  //     retVal = "Success";
  //   } catch (e) {
  //     retVal = e.toString();
  //   }
  //   return retVal;
  // }
}
