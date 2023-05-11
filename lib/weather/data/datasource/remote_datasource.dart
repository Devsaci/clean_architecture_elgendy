import 'package:dio/dio.dart';
import 'package:clean_architecture_elgendy/core/utils/constances.dart';
import '../models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName) async {
    try {
      var response = await Dio().get(
          "${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.appKey}");
      print("************ weather response *******************");
      print(response);
      print("************ weather response *******************");
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
    }
    return null;
  }
}
