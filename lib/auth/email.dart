import 'package:flutter/material.dart';
import 'password.dart';
class EmailSignUp extends StatefulWidget {
 final String email;
 EmailSignUp({this.email});
  @override
  _EmailSignUpState createState() => _EmailSignUpState();
}

class _EmailSignUpState extends State<EmailSignUp> {
  TextEditingController _emailController = TextEditingController();
  String email;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          width: 400,
          child: TextField(
            controller: _emailController,
            onSubmitted: (value) {
              setState(() {
               email = value;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context) => Password()));
            },
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0))),
          ),
        ),
      ),
    );
  }
}
