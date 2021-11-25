import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;

const String apiKey = '0f3549a3d7cf73a08f62b46dd79fe1a6';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;
  @override
  void initState() {
    getLocation();
    super.initState();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    print(latitude);
    print(longitude);
    getWeatherData();
  }

  void getWeatherData() async {
    http.Response response = await http.get(
      Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey',
      ),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      var data = response.body;
      var decodedData = jsonDecode(data);
      String cityName = decodedData['name'];
      double temperature = decodedData['main']['temp'];
      String description = decodedData['weather'][0]['description'];
      print(temperature);
      print(cityName);
      print(description);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
