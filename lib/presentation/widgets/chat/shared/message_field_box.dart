import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              // ignore: prefer_const_constructors
              borderSide: BorderSide(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(35)),
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: (
              final TextValue = textController.value.Text;
              onValue(textValue);
              TextController.clear();
            ) {},
          )),
    );
  }
}
