import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messageList = [
    Message(text: 'hi', fromWho: FromWho.me),
    Message(text: 'hola', fromWho: FromWho.me),
  ];
}