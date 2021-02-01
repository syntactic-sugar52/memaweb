import 'package:flutter/material.dart';

import 'desktopNavbar.dart';
import 'email.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _index = 0;
  final GlobalKey<ScaffoldState> _listKey = GlobalKey<ScaffoldState>();
  // List<AnimatedText> _text;
// List<AnimatedText> get _currentIndex => _text[_index % _text.length];

  @override
  Widget build(BuildContext context) {
    // final animatedText = _text[_index];
    return Scaffold(
        key: _listKey,
        backgroundColor: Color(0xffF4F7F6),
        body: Column(children: [
          DesktopNavbar(),
          Container(
              child: Row(
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(width: 300.0, height: 300.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Exchange",
                    style: TextStyle(fontSize: 43.0),
                  ),
                ],
              ),
              const SizedBox(width: 20.0, height: 100.0),
              Container(
                height: 100,
                width: 220,
              
                child: RotateAnimatedTextKit(
                  transitionHeight: 60.0,
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "Product",
                    "Service",
                    "Fiat",
                    "Information",
                    "Investment",
                    "Referral"
                  ],
                  textStyle: TextStyle(fontSize: 40.0, color: Colors.green),
                  textAlign: TextAlign.start,
                  isRepeatingAnimation: true,
                  // totalRepeatCount: 39,
                  repeatForever: true,
                ),
                
              ),
              const SizedBox(width: 20.0, height: 300.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "for",
                    style: TextStyle(fontSize: 43.0),
                  ),
                ],
              ),
              const SizedBox(width: 20.0, height: 100.0),
              Container(
                height: 100,
                width: 220,
                // decoration: BoxDecoration(color: Colors.amber),
                child: RotateAnimatedTextKit(
                  transitionHeight: 60.0,
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "Referral",
                        "Fiat",
                    "Information",
                    "Product",
                    "Service",
                     "Investment",
                  ],
                  textStyle: TextStyle(fontSize: 40.0, color: Colors.blue),
                  textAlign: TextAlign.start,
                  isRepeatingAnimation: true,
                  // totalRepeatCount: 39,
                  repeatForever: true,
                ),
              ),
            ],
          )),
          EmailSignUp()
        ]));
  }
}

// class AnimatedText {
//   final String label;
//   final Color color;
//   final Widget child;
//   // final int length;
//   AnimatedText({this.child, this.color,this.label});

//   List<AnimatedText> animatedText({VoidCallback onTap}) => <AnimatedText>[
//         AnimatedText(
//             label: 'Rotate',
//             color: Colors.red,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const SizedBox(
//                       width: 20.0,
//                       height: 100.0,
//                     ),
//                     const Text(
//                       'Exchange',
//                       style: TextStyle(fontSize: 43.0),
//                     ),
//                     const SizedBox(
//                       width: 20.0,
//                       height: 100.0,
//                     ),
//                     RotateAnimatedTextKit(
//                       onTap: onTap,
//                       isRepeatingAnimation: true,
//                       repeatForever: true,
//                       text: [
//                         "Product",
//                         "Service",
//                         "Information",
//                         "Referral",
//                         "Investment",
//                         "Fiat"
//                       ],
//                       textStyle: const TextStyle(
//                         fontSize: 40.0,
//                         // fontFamily: ,

//                       ),
//                       textAlign: TextAlign.start,
//       alignment: AlignmentDirectional.topStart
//                     ),
//                   ],
//                 )
//               ],
//             ))
//       ];
// }
