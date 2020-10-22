import 'package:flutter/material.dart';
class MaterialDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
       padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/arjun_1.jpeg"),
                fit: BoxFit.fitWidth
              )
          ),
          child: Text('''






  
    Arjun Satish 
    +919895528944''',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
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