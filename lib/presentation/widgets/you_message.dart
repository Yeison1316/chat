import 'package:chat/entities/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
        ),
        _imageChat(message: message)
      ],
    );
  }
}

class _imageChat extends StatelessWidget {
  const _imageChat({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius : BorderRadius.circular(20),
      child: Image.network(message.imageUrl!,
            height:250,
            width: size.width * 0.5,
            fit: BoxFit.cover,
            loadingBuilder: (context,child,loadingProgress){
              if(loadingProgress == null){
                return child;
              }
              return Text("cargando");
            }
            )
      );
  }
}