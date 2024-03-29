import 'dart:js';
import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/originals/97/c1/ab/97c1ab0ebd5df3440eb8843d86860009.jpg'),
          ),
        ),
        title: const Text('hola'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  final chatProvider = context.watch<ChatProvider>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: chatProvider,
                        itemBuilder: (context, index) {
                          return (index % 2 == 0)
                              ? const HerMessageBubble()
                              : const MyMessageBubble();
                        })),
                //Caja de Texto de mensaje
                const MessageFieldBox(),
              ],
            )));
  }
}
