import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:weekend_project/data/models/media_model.dart';

class MovieApi {
  Future<MediaModel> search() async {
    final request = await http.get(
      Uri.parse(
        'https://jellyseerr.alsahli.cloud/api/v1/discover/movies',
      ),
      headers: {
        'accept': 'application/json',
        'X-Api-Key':
            'MTY4NzY1MTk3MDU5NWQ4MTZlYmYxLWU3OGUtNDU4MS1iYWY0LWMxZWYzMGRhYTE3MQ=='
      },
    );
    final jsonDecode = json.decode(
      request.body,
    );
    final result = MediaModel.fromJson(
      jsonDecode,
    );
    log('result: $result');
    return result;
  }
}
