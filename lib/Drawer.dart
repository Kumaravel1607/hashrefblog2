import 'package:demoproject/Constant/color.dart';
import 'package:flutter/material.dart';

class DrawerType extends StatefulWidget {
  @override
  _DrawerTypeState createState() => _DrawerTypeState();
}

class _DrawerTypeState extends State<DrawerType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Blue,
        title: Text("Navigation Drawer"),
        titleSpacing: 2,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "Kums",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              accountEmail: new Text(
                "kumsjo29@gmail.com",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage('assets/images/banner1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://randomuser.me/api/portraits/men/28.jpg")),
            ),
            new ListTile(
                leading: Icon(Icons.library_music),
                title: new Text("Music"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.movie),
                title: new Text("Movies"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.shopping_cart),
                title: new Text("Shopping"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.apps),
                title: new Text("Apps"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.dashboard),
                title: new Text("Document"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.settings),
                title: new Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new Divider(
              thickness: 2,
            ),
            new ListTile(
                leading: Icon(Icons.info),
                title: new Text("About"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.power_settings_new),
                title: new Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
