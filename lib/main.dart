import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mema/auth/welcomeScreen.dart';
import 'package:mema/state/currentUser.dart';
import 'screens/post.dart';
import 'screens/home.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: missing_required_param
    return ChangeNotifierProvider(
        create: (context) => CurrentUser(),
        child: MaterialApp(
           debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: WelcomeScreen(),
        ));
  }
}
