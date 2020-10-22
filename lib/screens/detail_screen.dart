import 'package:flutter/material.dart';
import 'package:flutter_telegram_x/models/message_model.dart';


class DetailScreen extends StatefulWidget {
  final Message chat;

  DetailScreen({Key key, @required this.chat}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  _buildMessage(Message message, bool isMe, BuildContext context) {
    final Container msg = Container(
      child: Row(
        children: [
          CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(message.sender.imageUrl)),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 100,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
              color: Colors.white,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(7.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(message.sender.name, 
                    style: TextStyle(color:Colors.blue, fontSize: 
                    17.0),),
                    Text(message.text)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
    return msg;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(this.widget.chat.sender.name)],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/chat_background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            // reverse: true,
            // padding: EdgeInsets.only(top: 15.0),
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              final Message message = messages[index];
              final bool isMe = message.sender.id == currentUser.id;
              return ListTile(
                title: _buildMessage(message, isMe, context),
              );
            },
          ),
        ));
  }
}
