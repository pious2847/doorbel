import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GoogleAPI {
  final String? APiUri = dotenv.env['Google_Map_Api'];
  Future<List<dynamic>> getResturant() async {
    final dio = Dio();
    try {
      final response = await dio.get();
      if(response.statusCode == 200){
        return response.data;
      }
    } catch (e) {
      return e;
    }
  }
}
