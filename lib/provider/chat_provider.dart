import 'package:chat/entities/message.dart';
import 'package:chat/helpers/get_answer.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{

  final res = GetAnswer();
    final chatScroll = ScrollController();

  List<Message> message = [
    Message(text: "¿Has una pregunta?", from: FromWho.your,imageUrl: "https://media.tenor.com/Lciog3qTJOgAAAAM/10.gif"),
  ];
  Future<void> sendMessage(String text) async{
    if(text.isEmpty){
      return;
    }
    final newMessage = Message(text: text, from: FromWho.mine);
    message.add(newMessage);
    res.getAnswer();
    final response = await res.getAnswer();
    message.add(response);
    notifyListeners();
    moveScroll();
  }

  void moveScroll(){
    chatScroll.animateTo(
      chatScroll.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.decelerate
    );
  }
}