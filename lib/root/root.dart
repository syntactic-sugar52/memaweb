// import 'package:flutter/material.dart';
// import 'package:mema/home.dart';
// import 'package:mema_new/navigation/sidebar_animation.dart';
// import 'package:mema_new/screens/home.dart';
// import 'file:///C:/Users/angka/AndroidStudioProjects/mema_new/lib/auth/logIn.dart';
// import 'package:mema_new/state/currentUser.dart';
// import 'package:provider/provider.dart';

// enum AuthStatus { notLoggedIn, loggedIn }

// class Root extends StatefulWidget {
//   static const String id = 'root';
//   @override
//   _RootState createState() => _RootState();
// }

// class _RootState extends State<Root> {
//   AuthStatus _authStatus = AuthStatus.notLoggedIn;
//   @override
//   void didChangeDependencies() async {
//     // TODO: implement didChangeDependencies
//     super.didChangeDependencies();
//     CurrentUser _users = Provider.of<CurrentUser>(context, listen: false);
//     String _returnString = await _users.onStartUp();
//     if (_returnString == "success") {
//       setState(() {
//         _authStatus = AuthStatus.loggedIn;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget retVal;

//     switch (_authStatus) {
//       case AuthStatus.notLoggedIn:
//         retVal = Login();
//         break;
//       case AuthStatus.loggedIn:
//         retVal = Home();
//     }
//     return retVal;
//   }
// }
