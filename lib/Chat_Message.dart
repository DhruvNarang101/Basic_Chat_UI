import 'package:flutter/material.dart';

const String _name = "Dhruv";
class ChatMessage extends StatelessWidget{

  final String text;
  ChatMessage({required this.text});

  @override
  Widget build (BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container(
            margin: EdgeInsets.only(right: 10.0),
             child: CircleAvatar(
               child: Text(_name[0],
               style: TextStyle(
                 color: Colors.white,
               ),
               ),
               backgroundColor: Colors.lightBlue,
             ),
          ),
           Expanded(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 _name,style: Theme.of(context).textTheme.labelSmall),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: new Text(
                    text,
                  ),
               )
               ],
               ),
              ),
              ],
          ),
      );
  }
}