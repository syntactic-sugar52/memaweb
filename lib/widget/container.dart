import 'package:flutter/material.dart';
import 'package:mema/utils/constant.dart';

class ReusableContainer extends StatelessWidget {
  final Widget child;
  final padding;
  final height;
  final width;
  ReusableContainer({this.child, this.padding, this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: padding,
      width: width,
      height: height,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4.0,
            spreadRadius: 1.0,
            offset: Offset(4.0, 4.0),
          )
        ],
      ),
      child: child,
    );
  }
}
