import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';

class GoogleAPI {
  final String? APiUri = dotenv.env['Google_Map_Api'];
  final String? APiKey = dotenv.env['Google_Map_Api'];

  Future<List<dynamic>> getRestaurants() async {
    print("Env Data $APiUri   :  Key $APiKey");
    
    final dio = Dio();

    try {
      // Get current location
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      // Google Places API endpoint
      String url =
          'https://maps.googleapis.com/maps/api/place/nearbysearch/json';

      // API parameters
      Map<String, dynamic> queryParameters = {
        'location': '${position.latitude},${position.longitude}',
        'radius': '1500', // Search within 1500 meters
        'type': 'restaurant',
        'key': '$APiKey'
      };

      final response = await dio.get(url, queryParameters: queryParameters);

      if (response.statusCode == 200) {
        return response.data['results'];
      } else {
        throw Exception('Failed to fetch restaurants');
      }
    } catch (e) {
      throw Exception('Failed to make API call: $e');
    }
  }
}
