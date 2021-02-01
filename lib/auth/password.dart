import 'package:flutter/material.dart';
import 'package:mema/state/currentUser.dart';
import 'package:provider/provider.dart';
import 'package:mema/screens/subscription.dart';
class Password extends StatefulWidget {
 final String email;
 Password({this.email});
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  TextEditingController _pwController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();

  // void _signUpUser(String email, String password, String firstName,String lastName,BuildContext context) async {
  //   CurrentUser _users = Provider.of<CurrentUser>(context, listen: false);
  //   try {
  //     String _returnString = await _users.signUpUser(widget.email, password, firstName,lastName);
  //     if (_returnString == "success") {
  //       print("success");

  //       Navigator.of(context).push(
  //           MaterialPageRoute(builder: (context) => Subscription()));
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [Text("Create Password")],
            ),
            Row(children: [
               Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 300, right: 300, top: 50),
                    child: TextField(
                      
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          hintText: widget.email,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0))),
                    ),
                  ),
                )
            ],),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 300, right: 300, top: 50),
                    child: TextField(
                      controller: _pwController,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0))),
                    ),
                  ),
                )
              ],
            ),
            RaisedButton(onPressed: (){},)
          ],
        ),
      ),
    );
  }
}
