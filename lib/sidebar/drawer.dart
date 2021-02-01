import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
                      child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                    height: 80.0,
                    child: DrawerHeader(
                      child: Text(
                        'Full name',
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff006188),
                      ),
                    ),
                    margin: EdgeInsets.all(0.0),
                    padding: EdgeInsets.all(0.0)),
                    SizedBox(height: 20,),
                  
                ListTile(
                  title: Text('Profile'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Deal Request'),
                  onTap: () {},
                ),
                  ListTile(
                  title: Text('Friends'),
                  onTap: () {},
                ),
                  ListTile(
                  title: Text('Messages'),
                  onTap: () {},
                ),
                  ListTile(
                  title: Text('Notifications'),
                  onTap: () {},
                ),
                Divider(height: 50,),
                ListTile(
                  title: Text('Log out'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
