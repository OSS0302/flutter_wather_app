import 'package:wather_app/domain/model/weather_info.dart';

abstract interface class WeatherRepository {
  Future<WeatherInfo> getWeatherInfo(num lat, num long);

}
