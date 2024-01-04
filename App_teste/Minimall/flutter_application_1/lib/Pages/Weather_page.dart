import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/weather_model.dart';
import 'package:flutter_application_1/service/weather_servicce.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //api key
  final _weatherServicce = WeatherServicce('23474f85c62938615d08f2d30942d65e');
  Weather? _weather;

  //fetch weather
  _fetchWeather() async {
    //get weather
    String cityName = await _weatherServicce.getCurrentCity();

    try {
      final Weather = await _weatherServicce.getWeather(cityName);
      setState(() {
        _weather = Weather;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();

    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_weather?.cityName ?? "loading city.."),
            Text('${_weather?.temperature.round()}C')
          ],
        ),
      ),
    );
  }
}
