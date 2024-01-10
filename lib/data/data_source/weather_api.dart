import 'dart:convert';

import 'package:wather_app/domain/model/weather_info.dart';
import 'package:http/http.dart' as http;

class WeatherApi {
  Future<WeatherInfo> getWeatherInfoResult(num lat, num long) async {
    final response = await http.get(Uri.parse(
        'https://api.open-meteo.com/v1/forecast?hourly=temperature_2m,weathercode,relativehumidity_2m,windspeed_10m,pressure_msl&latitude=$lat&longitude=$long'));
    final result = WeatherInfo.fromJson(jsonDecode(response.body));
    return result;
  }
}
