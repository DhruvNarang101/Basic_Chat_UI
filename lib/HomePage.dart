import 'package:flutter/material.dart';
import 'ChatScreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text(
          "Your Chats",
          style:TextStyle(
            color: Colors.white,
            fontSize: 23,
          )
        ),
      ),
      body: ChatScreen(),
    );
  }
}