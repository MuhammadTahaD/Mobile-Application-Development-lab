import 'package:flutter/material.dart';

class DrawerApp extends StatefulWidget {
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  String currentScreen = "Home";

  Widget getScreen() {
    return Center(child: Text(currentScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(currentScreen)),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu")),
            ListTile(
              title: Text("Home"),
              onTap: () {
                setState(() => currentScreen = "Home");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("About"),
              onTap: () {
                setState(() => currentScreen = "About");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              onTap: () {
                setState(() => currentScreen = "Profile");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: getScreen(),
    );
  }
}