import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_o_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'hi', fromWho: FromWho.me),
    Message(text: 'hola', fromWho: FromWho.me),
  ];

  //metodo para enviar mensaje
  Future<void> sendMessage(String text) async {
    if (text.isNotEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);

    //agregar un mensaje a la lista
    messageList.add(newMessage);
    if (text.endsWith('?')){
      herReply();
    }

    notifyListeners();
    
    Future<void> moveScrollToBottom() async {
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }
Future<void> herReply()  async {
  final herMessage = await getYesNoAnswer.getAnswer();
  messageList.add(herMessage);
  notifyListeners();
  moveScrollToBottom();
}

  moveScrollToBottom (){
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut);
  }
}