import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mema/auth/signUp.dart';
import 'package:mema/utils/constant.dart';
import 'login.dart';

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
          color: Color(0xffF4F7F6),
          // constraints: BoxConstraints(maxWidth: 1200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TEAM MEMA",
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff202121),
                    fontSize: 30.0),
              ),
              Row(
                children: [
                  // Text("About us"),
                  // SizedBox(
                  //   width: 30.0,
                  // ),
                  // MaterialButton(
                  //   color: Colors.black,
                  //     onPressed:(){},
                  //     child: Text("Log in", style: GoogleFonts.quicksand(color: Colors.white,)),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(20.0)),

                  //   ),
                  // ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push((context) , MaterialPageRoute(builder: (context) => Login()));
                        // Navigator.pushAndRemoveUntil(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => Login()),
                        //     (route) => false);
                      },
                      child: Text(
                        "Log In",
                        style: GoogleFonts.quicksand(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 30.0,
                  ),
                  // MaterialButton(
                  //   height: 60.0,
                  //   minWidth: 150.0,
                  //   color: Color.fromRGBO(0, 42, 50, 10),
                  //   onPressed: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                  //   },
                  //   child: Text("Sign Up",
                  //       style: GoogleFonts.quicksand(
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 18.0)),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  //   ),
                  // ),
                ],
              )
            ],
          )),
    );
  }
}
