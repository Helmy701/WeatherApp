class WeatherModel {
  String date;
  double temp;
  double minTemp;
  double maxTemp;
  String weatherStateName;

  WeatherModel({
    required this.date,
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.weatherStateName,
  });
  factory WeatherModel.fromJson(dynamic json) {
    return WeatherModel(
        date: json['Location']['localtime'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        weatherStateName: json['forecast']['forecastday'][0]['day']['condition']
            ['text']);
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'temp = $temp minTemp = $minTemp date = $date ';
  }
}
