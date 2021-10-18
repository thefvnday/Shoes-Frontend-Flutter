import 'package:flutter/material.dart';
import 'package:sepasang/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Fandy",
              style: TextStyle(fontSize: 18),
            ),
            accountEmail: Text("fandyxirianto@gmail.com",
                style: TextStyle(fontSize: 20)),
            currentAccountPicture: CircleAvatar(
              child: Text(
                'F',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("My Account",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text("My Order",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text("WishList",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
          SizedBox(height: 10,),
           ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
