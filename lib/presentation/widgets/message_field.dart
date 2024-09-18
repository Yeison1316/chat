import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessageField extends StatelessWidget {
  final onValue;

  const MessageField({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

    return Padding(padding: EdgeInsets.all(8.0),
    child: TextFormField(
      controller: textController,
      focusNode: focusNode,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
          ),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Ingresa tu mensage",
        filled: true,
        suffixIcon: IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            final textValue =textController.value.text;
            print(textValue);
            focusNode.requestFocus();
            onValue(textValue);
            textController.clear();
          },
          )
      ),
      onFieldSubmitted: (value) {
        print("Submit");
        focusNode.requestFocus();
        onValue(value);
        textController.clear();
      },
      onChanged: (value) {
        print(value);
      },
    ),
    );
  }
}