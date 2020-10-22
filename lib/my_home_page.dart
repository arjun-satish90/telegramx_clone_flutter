import 'package:flutter/material.dart';
import 'package:flutter_telegram_x/custom_app_bar.dart';
import 'package:flutter_telegram_x/material_drawer.dart';
import 'package:flutter_telegram_x/widgets/chat_item.dart';

import 'models/message_model.dart';

class HomePage extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: CustomAppBar(),
      ),
      drawer: Drawer(
        child: MaterialDrawer()
      ),
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            final Message chat = chats[index];
            return ListTile(
              title: ChatItem(chat),
            );
           },
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Icon(Icons.edit),
      backgroundColor: Colors.blue,
    )
    );
  }
}
