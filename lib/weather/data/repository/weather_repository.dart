import 'package:clean_architecture_elgendy/weather/data/datasource/remote_datasource.dart';
import 'package:clean_architecture_elgendy/weather/domain/entities/weather.dart';
import 'package:clean_architecture_elgendy/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{

  final RemoteDataSource remoteDataSource;

  WeatherRepository(this.remoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) {
    // TODO: implement getWeatherByCityName
    throw UnimplementedError();
  }
}