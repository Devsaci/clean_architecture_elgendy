

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get('url API');
    } catch (e) {
      if (kDebugMode) {print(e);}
    }
  }
}
