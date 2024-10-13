import 'package:flutter/material.dart';
import 'Chat_Message.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => new _ChatScreenState();
}

class _ChatScreenState extends  State<ChatScreen>{
  final List<ChatMessage> _messages = <ChatMessage> [];
  final TextEditingController _textController = new TextEditingController();

  void _handleSubmitted(String text){
    _textController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0,message);
    });
  }

  Widget _textComposer(){
    return IconTheme(
      data: IconThemeData(
        color: Colors.lightBlue,
      ),
    child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
        child: Row(
          children: [
            Flexible( // It take the avalible space and also allow the other widget space
             child: TextField(
              decoration: InputDecoration.collapsed(
                  hintText: "Send a message..."),
              controller: _textController,
              onSubmitted: _handleSubmitted, //onsubmitted means when pressed enter
            ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              child: IconButton(
                icon: Icon(Icons.send,),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            )
          ],
        )
      ),
    );
  }
  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
            padding: const EdgeInsets.all(6.0),
            reverse: true,
            itemBuilder: (_,int index) => _messages[index],
            itemCount: _messages.length,
          ),
         ),
        const Divider(
          height: 1.0,
        ),
        Container(
          child: _textComposer(),
        )
      ],
    );
  }
}