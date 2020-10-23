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
          Container(
            margin: isMe
          ? EdgeInsets.only(
              top: 4.0,
              left: 58.0,
            )
          : EdgeInsets.only(
              top: 4.0
            ),
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            width: MediaQuery.of(context).size.width * 0.75,
            child: isMe ? Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0), topRight: Radius.circular(5.0))),
              color: Colors.green,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(message.text,style: TextStyle(fontSize: 16.0))
                  ],
                ),
              ),
            ):
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(15.0),bottomRight: Radius.circular(15.0),
               bottomLeft: Radius.circular(15.0), topLeft: Radius.circular(5.0))),
              color: Colors.white,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(message.text, style: TextStyle(fontSize: 16.0),)
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
            children: [
            Row(
              children: [
                CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage(this.widget.chat.sender.imageUrl)),
              SizedBox( width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(this.widget.chat.sender.name),
                     Text("Seen 2 hours ago",style:TextStyle(fontSize: 14.0,color:Color.fromARGB(224,240,233,233)),)
                  ],
                ),
              ],
            )],
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
