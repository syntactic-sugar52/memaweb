import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_date_picker/dropdown_date_picker.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _confirmPwController = TextEditingController();
  TextEditingController _pwController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  final now = DateTime.now();
  Container buildFirstName() {
    return Container(
      height: 100,
      width: 300,
      child: TextFormField(
        controller: _firstNameController,
        decoration: new InputDecoration(
          labelText: "Enter First Name",
          fillColor: Colors.black,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(20.0),
            borderSide: new BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return "First Name cannot be empty";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.name,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }

  Container buildLastName() {
    return Container(
      height: 100,
      width: 300,
      child: TextFormField(
        controller: _lastNameController,
        decoration: new InputDecoration(
          labelText: "Enter Last Name",
          fillColor: Colors.black,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(20.0),
            borderSide: new BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return "Last Name cannot be empty";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.name,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }

  Container buildEmail() {
    return Container(
      height: 100,
      width: 300,
      child: TextFormField(
        controller: _emailController,
        decoration: new InputDecoration(
          labelText: "Enter Email",
          fillColor: Colors.black,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(20.0),
            borderSide: new BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return "Email cannot be empty";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      height: 100,
      width: 300,
      child: TextFormField(
        controller: _pwController,
        decoration: new InputDecoration(
          labelText: "Enter Password",
          fillColor: Colors.black,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(20.0),
            borderSide: new BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return "Password cannot be empty";
          } else {
            return null;
          }
        },
        obscureText: true,
        // keyboardType: TextInputType.p,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }

  Container confirmPassword() {
    return Container(
      height: 100,
      width: 300,
      child: TextFormField(
        controller: _confirmPwController,
        decoration: new InputDecoration(
          labelText: "Confirm Password",
          fillColor: Colors.black,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(20.0),
            borderSide: new BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return "Password cannot be empty";
          } else {
            return null;
          }
        },
        obscureText: true,
        // keyboardType: TextInputType.p,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }

  Container buildDropDown() {

    return Container(
      height: 100,
      width: 300,
      child: DropdownDatePicker(
  firstDate: ValidDate(year: 2005, month: 01, day: 01),
  lastDate: ValidDate(year: 2020, month: 12, day: 12),
  // initialDate: NullableDate(year: 2010, month: null, day: 24),
  ascending: false,
  dateFormat: DateFormat.dmy,
  dateHint: DateHint(year: 'year', month: 'month', day: 'day'),
  dropdownColor: Colors.white,
  // underLine:
),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F7F6),
      body: SingleChildScrollView(
        child: Container(
          // color: Color.fromRGBO(252, 201, 80, 1.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150.0,
                  ),
                  Text("Welcome to ",
                      style: GoogleFonts.quicksand(
                          fontSize: 28.0, color: Colors.black)),
                  Row(
                    children: [
                      Text(
                        "MEMA",
                        style: GoogleFonts.quicksand(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    buildFirstName(),
                    buildLastName(),
                    buildEmail(),
                    buildPassword(),
                    confirmPassword(),
                    buildDropDown()
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Color(0xff02A767),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.quicksand(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
