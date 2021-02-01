import 'package:flutter/material.dart';
import 'package:mema/widget/container.dart';
import 'package:google_fonts/google_fonts.dart';

class PostCard extends StatelessWidget {
  Widget buildPostCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 250,
        width: 320,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Nintendo-Switch-wJoyCons-BlRd-Standing-FL.jpg/300px-Nintendo-Switch-wJoyCons-BlRd-Standing-FL.jpg"),
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
          ),
          color: Colors.black,
          borderRadius: BorderRadius.circular(3.0),
        ),
      ),
    );
  }

  Widget buildBottom() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 50,
        width: 320,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: Text("name"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //   return Scaffold(
    //     backgroundColor: Colors.amber,
    //     body: Center(
    //         child: Column(
    //       children: [
    //         // buildPostCard(),
    //         // buildBottom()

    //         SizedBox(
    //           width: 320,
    //           //  height: 50,
    //           child: Card(
    //             color: Colors.white54,
    //             child: InkWell(
    //               onTap: () {},
    //               child: Column(
    //                 //  mainAxisSize: MainAxisSize.min,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Stack(
    //                     alignment: Alignment.bottomLeft,
    //                     children: [
    //                       Container(
    //                         height: 250,
    //                         width: 320,
    //                         decoration: BoxDecoration(
    //                           image: DecorationImage(
    //                             image: NetworkImage(
    //                                 "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Nintendo-Switch-wJoyCons-BlRd-Standing-FL.jpg/300px-Nintendo-Switch-wJoyCons-BlRd-Standing-FL.jpg"),
    //                             fit: BoxFit.fitWidth,
    //                             alignment: Alignment.topCenter,
    //                           ),
    //                         ),
    //                       ),
    //                       // Divider(),
    //                     ],
    //                   ),

    //                   Card(
    //                                         child: Positioned(
    //                       left: 8.0,
    //                       bottom: 8.0,
    //                       child: Row(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           children: [
    //                             Container(
    //                               // height: 300,
    //                               //  width: 30,
    //                               decoration: BoxDecoration(),
    //                               child: Text("hello"),
    //                             ),
    //                           ],
    //                         ),
    //                     ),
    //                   ),
    //                   // Divider(),

    //                   ButtonBar(
    //                     children: [CircleAvatar(), Text("name")],
    //                   )
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     )),
    //   );
    // }
    return Scaffold(
      backgroundColor: Colors.white54,
      // appBar: AppBar(
      //   title: Text("MEMA"),
      // ),
      body: Container(
        // color: Colors.cyan,
        padding: EdgeInsets.only(top: 50),
        // height: 2000,
        width: 350,
        child: ListView(
          // scrollDirection: Axis,
          children: <Widget>[
            Container(
              // height: 200,
              width: 600,
              // margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0))),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  // crossAxisAlignment: CrossAxisAlignment.center,// add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2.0),
                        topRight: Radius.circular(2.0),
                      ),
                      child: SizedBox(
                        height: 250,
                        width: 500,
                        child: Image.network(
                          'https://my-live-01.slatic.net/p/fe5cb73e8a4b4188c03d2e6053b444f3.jpg_q80_.webp',
                          // width: 500,
                          // height: 300,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      // width: 1200 ,
                      height: 150,

                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 50, left: 30),
                              ),
                              Text(
                                "LV Bag",
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20, left: 30),
                              ),
                              Text(
                                "Second hand bag",
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(2.0),
                        ),
                        child: Image.network(
                            'https://placeimg.com/640/480/any',
                            width: 350,
                            height: 200,
                            fit: BoxFit.fitWidth),
                      ),
                      ListTile(
                        title: Text('Pub 1'),
                        subtitle: Text('Location 1'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child:
                            Image.network('https://placeimg.com/640/480/any',
                                // width: 700,
                                height: 300,
                                fit: BoxFit.fill),
                      ),
                      ListTile(
                        title: Text('Pub 1'),
                        subtitle: Text('Location 1'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
