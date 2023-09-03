import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_api/models/weather2.dart';

class GetApi2 {
  Future<Weather2> getWeather() async {
    final response = await http.get(Uri.parse(
        "http://api.weatherapi.com/v1/forecast.json?key=4adf5161f62b42bcaa0105305233108&q=Riyadh&days=7&aqi=no&alerts=no"));
    final responseAsJson = json.decode(response.body);
    final result = Weather2.fromJson(responseAsJson);
    return result;
  }

  Future<Weather2> getWeather2(String city) async {
    final response = await http.get(Uri.parse(
        "http://api.weatherapi.com/v1/forecast.json?key=4adf5161f62b42bcaa0105305233108&q=$city&days=7&aqi=no&alerts=no"));
    final responseAsJson = json.decode(response.body);
    final result = Weather2.fromJson(responseAsJson);
    return result;
  }
}
