import 'package:dio/dio.dart';
import 'package:chat/entities/message.dart';
class GetAnswer{
  final _dio = Dio();
  Future<Message> getAnswer () async{
    final response = await _dio.get("https://yesno.wtf/api");

    return Message(text: response.data["answer"], from: FromWho.your,imageUrl: response.data["image"]);
  }
}