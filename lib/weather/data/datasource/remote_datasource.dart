import '../models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel> getWeatherByCountryName(String countryName);
}
 class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel> getWeatherByCountryName(String countryName) {
    // TODO: implement getWeatherByCountryName
    throw UnimplementedError();
  }
}
