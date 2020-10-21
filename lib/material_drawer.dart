import 'package:flutter/material.dart';
class MaterialDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
       padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: FittedBox(
            child : Image(
            image:AssetImage('assets/images/arjun.jpeg'),
             fit: BoxFit.fitWidth 
            )
        ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Contacts'),
        ),
        ListTile(
          leading: Icon(Icons.bookmark),
          title: Text('Saved Messages'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(Icons.person_add),
          title: Text('Invite Friends'),
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text('Help'),
        ),
        ListTile(
          leading: Icon(Icons.mood),
          title: Text('Night Mode'),
        ),
      ],
    );
  }
}