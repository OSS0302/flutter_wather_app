class WeatherInfo {
   num latitude;
   num longitude;
   num generationTimeMs;
   num utcOffsetSeconds;
  String timezone;
  String timezoneAbbreviation;
   num elevation;
  HourlyUnits hourlyUnits;
  Hourly hourly;

  WeatherInfo({
    required this.latitude,
    required this.longitude,
    required this.generationTimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.hourlyUnits,
    required this.hourly,
  });

   @override
  String toString() {
    return 'WeatherInfo{latitude: $latitude, longitude: $longitude, generationTimeMs: $generationTimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, hourlyUnits: $hourlyUnits, hourly: $hourly}';
  }

   factory WeatherInfo.fromJson(Map<String, dynamic> json) {
    return WeatherInfo(
      latitude: json['latitude'],
      longitude: json['longitude'],
      generationTimeMs: json['generationtime_ms'],
      utcOffsetSeconds: json['utc_offset_seconds'],
      timezone: json['timezone'],
      timezoneAbbreviation: json['timezone_abbreviation'],
      elevation: json['elevation'],
      hourlyUnits: HourlyUnits.fromJson(json['hourly_units']),
      hourly: Hourly.fromJson(json['hourly']),
    );
  }
}

class HourlyUnits {
  String time;
  String temperature2m;
  String weatherCode;
  String relativeHumidity2m;
  String windSpeed10m;
  String pressureMsl;

  HourlyUnits({
    required this.time,
    required this.temperature2m,
    required this.weatherCode,
    required this.relativeHumidity2m,
    required this.windSpeed10m,
    required this.pressureMsl,
  });

  factory HourlyUnits.fromJson(Map<String, dynamic> json) {
    return HourlyUnits(
      time: json['time'],
      temperature2m: json['temperature_2m'],
      weatherCode: json['weathercode'],
      relativeHumidity2m: json['relativehumidity_2m'],
      windSpeed10m: json['windspeed_10m'],
      pressureMsl: json['pressure_msl'],
    );
  }
}

class Hourly {
  List<String> time;
  List<num> temperature2m;
  List<int> weatherCode;
  List<int> relativeHumidity2m;
  List<num> windSpeed10m;
  List<num> pressureMsl;

  Hourly({
    required this.time,
    required this.temperature2m,
    required this.weatherCode,
    required this.relativeHumidity2m,
    required this.windSpeed10m,
    required this.pressureMsl,
  });

  factory Hourly.fromJson(Map<String, dynamic> json) {
    return Hourly(
      time: List<String>.from(json['time']),
      temperature2m: List<num>.from(json['temperature_2m']),
      weatherCode: List<int>.from(json['weathercode']),
      relativeHumidity2m: List<int>.from(json['relativehumidity_2m']),
      windSpeed10m: List<num>.from(json['windspeed_10m']),
      pressureMsl: List<num>.from(json['pressure_msl']),
    );
  }
}