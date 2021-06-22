import 'package:flutter/material.dart';
import 'package:flutter_clima/data/data_constants.dart';
import 'package:flutter_clima/screen/weather_city_screen.dart';

import 'package:flutter_clima/model/city.dart';
import 'package:flutter_clima/model/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListCitiesScreen extends StatelessWidget {
  String cityName = "";
  List<City> cities;
  List<Weather> weathers;
  List<dynamic> data;

  ListCitiesScreen(List<City> this.cities);

  void _goToWeatherCityScreen(BuildContext context, City city) {
    
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => WeatherCityScreem(data, city),
        ),
      );
    }

  

  Future<void> requestWeather(City city, BuildContext context) async {
    String _url = api + city.id.toString() + '/';
    print(_url);
    Uri url = Uri.parse(_url);
    final response = await http.get(url);
    final map = jsonDecode(response.body);

    data = (map["consolidated_weather"] as List)
        .map((e) => Weather.fromJson(e))
        .toList();

    if (data.length > 0) {
      _goToWeatherCityScreen(context, city);
    }
    else {
      showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alerta"),
          content: Text("No se pudo recuperar el pronóstico del tiempo."),
        );
      }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ciudades encontradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: new ListView.builder(
                itemCount: cities == null ? 0 : cities.length,
                itemBuilder: (context, index) {
                  final city = cities[index];
                  return ListTile(
                    title: Text(city.title),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                      onPressed: () =>  requestWeather(city, context),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
