import 'package:flutter/material.dart';
import 'package:wather_app/data/data_source/weather_api.dart';
import 'package:wather_app/data/repository/weather_repository_info_impl.dart';
import 'package:wather_app/domain/model/weather_info.dart';

class MainViewModel extends ChangeNotifier {
  final WeatherApi  _api = WeatherApi();
  late  WeatherRepositoryImpl impl;
   WeatherInfo?  weatherData;

  Future<void> getRead(num lat , num long) async{
    impl = WeatherRepositoryImpl(api:_api);

    final result = await impl.getWeatherInfo(lat,long);
    weatherData = result;
  }
}