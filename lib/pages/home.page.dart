import 'package:flutter/material.dart';
import 'login.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Center(
          
          child: SizedBox(
            width: 130,
            
            child: Image.asset("assets/app-logo.png"),
          ),
        ),

      ),

drawer: Drawer(
        child: ListView(
          children: <Widget>[

            UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("Admin@Admin.com"),
              currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/profile-picture.png"),
                  backgroundColor: Colors.transparent,
            ),
            ),

            ListTile(
              leading: Icon(Icons.cake),
              trailing: Icon(Icons.home),
              title: Text("item1"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.cake),
              trailing: Icon(Icons.home),
              title: Text("item2"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.cake),
              trailing: Icon(Icons.home),
              title: Text("item3"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.local_pizza),
              trailing: Icon(Icons.home),
              title: Text("item4"),
              onTap: () {},
            ),
             ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Sair"),
              onTap: () {Navigator.push(
                context,
                 MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage()));
              },
            ),
          ],
        ),
      ),

      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        
        Container(
          child: Image.asset("assets/post-picture-001.png"),
        ),
        
        
      ],
    ),
  );
}
