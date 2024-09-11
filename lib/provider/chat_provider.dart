import 'package:chat/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> message = [
    Message(text: "hola", from: FromWho.mine),
    Message(text: "hola", from: FromWho.your)
  ];

}