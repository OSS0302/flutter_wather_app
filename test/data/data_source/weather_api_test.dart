
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:wather_app/domain/model/weather_info.dart';

void main () {
  test('http 데이터 잘오는지', ()  async {
    final response = await http.get(Uri.parse(
        'https://api.open-meteo.com/v1/forecast?hourly=temperature_2m,weathercode,relativehumidity_2m,windspeed_10m,pressure_msl&latitude=37.565638640481254&longitude=126.97483247607147'));
    final result = WeatherInfo.fromJson(jsonDecode(response.body));
    return result;
  });
}