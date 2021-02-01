import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mema/sidebar/drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int productCart = 0;

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.filter_list,
          color: Color(0xffffe75e),
        ),
        onPressed: () {
          _scaffoldKey.currentState.openDrawer();
        },
      ),
      automaticallyImplyLeading: false,
      title: Text(
        "MEMA",
        style: GoogleFonts.quicksand(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0),
      ),
      backgroundColor: Color.fromRGBO(0, 42, 50, 10),
      elevation: 1,
      centerTitle: true,
      titleSpacing: 0,
      actions: [
        Container(
          child: Stack(children: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            Text("$productCart")
          ]),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, snap) {
      var count = 4;
      if (snap.maxWidth > 1200) count = 8;
      return Scaffold(
        key: _scaffoldKey,
        drawer: SideDrawer(),
        backgroundColor: Color(0xffF4F7F6),
        appBar: buildAppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Private",
                    style: GoogleFonts.quicksand(
                        fontSize: 32.0, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    // flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                        hintText: "Search",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                  ),
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.filter),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 150,
                    child: ListView.builder(
                      itemBuilder: (context, index) => ListTile(
                        title: Text("Category $index"),
                      ),
                      itemCount: 6,
                    ),
                  ),
                  Expanded(
                    // flex: 2,
                    child: GridView.builder(
                      itemBuilder: (context, index) =>
                          cartView(products[index]),
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, childAspectRatio: 1 / 1.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget cartView(ProductItemModel productItemModel) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://assets.ajio.com/medias/sys_master/root/hd4/h99/14092964397086/-1117Wx1400H-460455972-black-MODEL.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${productItemModel.title}"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${productItemModel.tagline}"),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        productItemModel.added = !productItemModel.added;
                        if (productItemModel.added)
                          productCart++;
                        else
                          productCart--;
                      });
                    },
                    color:
                        !productItemModel.added ? Colors.yellow : Colors.grey,
                    child:
                        Text(!productItemModel.added ? "Add to cart" : "Added"),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  List<ProductItemModel> products = [
    ProductItemModel(
        tagline: "best shoe in the world", title: "nike shoes", added: false),
    ProductItemModel(
        tagline: "besanksa shoe in the world",
        title: "nike shoes",
        added: false),
    ProductItemModel(
        tagline: "besamsamsladt shoe in the world",
        title: "nike shoes",
        added: false),
    ProductItemModel(
        tagline: "best shoe ismakmskasan the world",
        title: "nike shoes",
        added: false),
    ProductItemModel(
        tagline: "best shoe in the wlamlsamlsmaorld",
        title: "nike shoes",
        added: false),
  ];
}

class ProductItemModel {
  String title;
  String tagline;
  bool added;

  ProductItemModel({this.title, this.tagline, this.added = false});
}
