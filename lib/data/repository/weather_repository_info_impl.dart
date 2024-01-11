import 'package:wather_app/data/data_source/weather_api.dart';
import 'package:wather_app/domain/model/weather_info.dart';
import 'package:wather_app/domain/repository/weather_repostiory_info.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi _api;

  const WeatherRepositoryImpl({
    required WeatherApi api,
  }) : _api = api;

  @override
  Future<WeatherInfo> getWeatherInfo(num lat, num long) async {
    final result = await _api.getWeatherInfoResult(lat, long);
      return result;
  }
}