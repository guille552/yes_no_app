import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'hi', fromWho: FromWho.me),
    Message(text: 'hola', fromWho: FromWho.me),
  ];

  //metodo para enviar mensaje
  Future<void> sendMessage(String text) async {

    final newMessage = Message(text: text, fromWho: FromWho.me);

    //agregar un mensaje a la lista
    messageList.add(newMessage);

    notifyListeners();
  }
  moveScrollToBottom (){
    chatScrollController.animateTo(chatScrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}