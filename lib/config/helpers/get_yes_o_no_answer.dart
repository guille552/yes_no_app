import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:yes_no_app/domain/entities/message.dart';



class GetYesNoAnswer{
  final _dio = Dio();
  Future<Message> getAnswer() async{
    final response = await _dio.get('http://yesno.wtf/api');
    throw UnimplementedError();
  }
}