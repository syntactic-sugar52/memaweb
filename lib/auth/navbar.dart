import 'package:flutter/material.dart';
import 'package:mema/auth/desktopNavbar.dart';
class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:( context, constraints){
if(constraints.maxWidth > 1200){
  return DesktopNavbar();
}else if(constraints.maxWidth > 800 && constraints.maxWidth < 1200){
  return DesktopNavbar();
}else{
  return MobileNavbar();
}
    });
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}