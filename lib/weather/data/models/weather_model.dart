import 'package:clean_architecture_elgendy/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
    super.id,
    super.cityName,
    super.main,
    super.description,
    super.pressure,
  );

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return null!; //This null-check will always throw an exception because the expression will always evaluate to 'null'.
  }
}
