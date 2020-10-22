import 'package:flutter/material.dart';
import 'package:flutter_telegram_x/models/message_model.dart';

class ChatItem extends StatelessWidget {

  Message chat;
  ChatItem(Message chat){
   this.chat = chat;
  }


  get _firstPart => Row(
        children: [
          CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(this.chat.sender.imageUrl))
        ],
      );


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(1.0),
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _firstPart,
            SizedBox(width: 10.0),
            Container(
              margin: const EdgeInsets.all(0),
               padding: const EdgeInsets.all(2.0),
              width: MediaQuery.of(context).size.width * 0.67,
              decoration: BoxDecoration(border: Border(
                bottom: BorderSide(width : 0.25,color: Colors.grey),
                )
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(chat.sender.name,
                      style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0)
                      ),SizedBox(height: 5.0),
                      Container(
                        padding: const EdgeInsets.all(1.0),
                        width: MediaQuery.of(context).size.width * .50,
                        child: Text(
                            this.chat.text,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tue"),
                      SizedBox(height: 15.0),
                      this.chat.unread ?
                      Container(
                        width: 40.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '90',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ):Text('')
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
