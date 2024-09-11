import 'package:chat/entities/message.dart';
import 'package:flutter/material.dart';

class YouMessage extends StatelessWidget {

  final Message message;

  const YouMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

      final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.tertiary,
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text(message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}