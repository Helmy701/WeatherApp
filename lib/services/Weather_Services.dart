import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/model/weather_model.dart';

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1/';
  String apiKey = '205d89e5ea7943baace115926230511';
  Future<WeatherModel> getWeather(String cityName) async {
    Uri url = Uri.parse(
        '${baseUrl}forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    WeatherModel weather = WeatherModel.fromJson(data);
    return weather;
  }
}
