

import 'dart:convert';

import 'package:clean_architecture_elgendy/core/utils/constances.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName) async {
    try {
      var response = await Dio().get
        ('${AppConstance.baseUrl}/weather?q=$cityName&appid=K${AppConstance.appKey}');
      if (kDebugMode) {print(response);}
      return WeatherModel.fromJson(json.decode(response.data));
    } catch (e) {
      if (kDebugMode) {print(e);}
    }
    return null;
  }
}
