import 'package:flutter/material.dart';
import 'package:flutter_clima/model/city.dart';
import 'package:flutter_clima/model/weather.dart';
import 'package:intl/intl.dart';

class WeatherCityScreem extends StatelessWidget {
  List<dynamic> data;
  City city;
  double separation = 10;
  var formatter = new DateFormat("yyyy-MM-dd");
  WeatherCityScreem(List<dynamic> this.data, City this.city);

  String kindOfImage(String weatherStates) {
    String urlImane = "";
    switch (weatherStates) {
      case "Snow":
        urlImane = "assets/images/snow.png";
        break;
      case "Sleet":
        urlImane = "assets/images/sleet.png";
        break;
      case "Hail":
        urlImane = "assets/images/hail.png";
        break;
      case "Thunderstorm":
        urlImane = "assets/images/thunderstorm.png";
        break;
      case "Heavy Rain":
        urlImane = "assets/images/heavyRain.png";
        break;
      case "Light Rain":
        urlImane = "assets/images/lightRain.png";
        break;
      case "Showers":
        urlImane = "assets/images/showers.png";
        break;
      case "Heavy Cloud":
        urlImane = "assets/images/heavyCloud.png";
        break;
      case "Light Cloud":
        urlImane = "assets/images/lightCloud.png";
        break;
      case "Clear":
        urlImane = "assets/images/clear.png";
        break;
    }
    return urlImane;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(city.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Pronostico del tiempo',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: EdgeInsets.all(15),
              elevation: 20,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    kindOfImage((data[0] as Weather).weatherStateName),
                    height: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fecha: " +
                        formatter.format((data[0] as Weather).applicableDate),
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Estado meteorológico: " +
                      (data[0] as Weather).weatherStateName),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura: " +
                      (data[0] as Weather).theTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura máxima: " +
                      (data[0] as Weather).maxTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura mínima: " +
                      (data[0] as Weather).minTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[0] as Weather).windDirectionCompass),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Velocidad del viento: " +
                      (data[0] as Weather).windSpeed.round().toString() +
                      "mph"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[0] as Weather).windDirection.round().toString() +
                      "°"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Presión de aire: " +
                      (data[0] as Weather).airPressure.round().toString() +
                      " milibar"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Humedad: " +
                      (data[0] as Weather).humidity.round().toString() +
                      "%"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Visibilidad: " +
                      (data[0] as Weather).visibility.round().toString() +
                      "millas"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Porcentaje de predicción: " +
                      (data[0] as Weather).predictability.toString() +
                      "%"),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: EdgeInsets.all(15),
              elevation: 20,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    kindOfImage((data[1] as Weather).weatherStateName),
                    height: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fecha: " +
                        formatter.format((data[1] as Weather).applicableDate),
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Estado meteorológico: " +
                      (data[1] as Weather).weatherStateName),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura: " +
                      (data[1] as Weather).theTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura máxima: " +
                      (data[1] as Weather).maxTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura mínima: " +
                      (data[1] as Weather).minTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[1] as Weather).windDirectionCompass),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Velocidad del viento: " +
                      (data[1] as Weather).windSpeed.round().toString() +
                      "mph"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[1] as Weather).windDirection.round().toString() +
                      "°"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Presión de aire: " +
                      (data[1] as Weather).airPressure.round().toString() +
                      " milibar"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Humedad: " +
                      (data[1] as Weather).humidity.round().toString() +
                      "%"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Visibilidad: " +
                      (data[1] as Weather).visibility.round().toString() +
                      "millas"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Porcentaje de predicción: " +
                      (data[1] as Weather).predictability.toString() +
                      "%"),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: EdgeInsets.all(15),
              elevation: 20,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    kindOfImage((data[2] as Weather).weatherStateName),
                    height: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fecha: " +
                        formatter.format((data[2] as Weather).applicableDate),
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Estado meteorológico: " +
                      (data[2] as Weather).weatherStateName),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura: " +
                      (data[2] as Weather).theTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura máxima: " +
                      (data[2] as Weather).maxTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura mínima: " +
                      (data[2] as Weather).minTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[2] as Weather).windDirectionCompass),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Velocidad del viento: " +
                      (data[2] as Weather).windSpeed.round().toString() +
                      "mph"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[2] as Weather).windDirection.round().toString() +
                      "°"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Presión de aire: " +
                      (data[2] as Weather).airPressure.round().toString() +
                      " milibar"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Humedad: " +
                      (data[2] as Weather).humidity.round().toString() +
                      "%"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Visibilidad: " +
                      (data[2] as Weather).visibility.round().toString() +
                      "millas"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Porcentaje de predicción: " +
                      (data[2] as Weather).predictability.toString() +
                      "%"),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: EdgeInsets.all(15),
              elevation: 20,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    kindOfImage((data[3] as Weather).weatherStateName),
                    height: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fecha: " +
                        formatter.format((data[3] as Weather).applicableDate),
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Estado meteorológico: " +
                      (data[3] as Weather).weatherStateName),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura: " +
                      (data[3] as Weather).theTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura máxima: " +
                      (data[3] as Weather).maxTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura mínima: " +
                      (data[3] as Weather).minTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[3] as Weather).windDirectionCompass),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Velocidad del viento: " +
                      (data[3] as Weather).windSpeed.round().toString() +
                      "mph"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[3] as Weather).windDirection.round().toString() +
                      "°"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Presión de aire: " +
                      (data[3] as Weather).airPressure.round().toString() +
                      " milibar"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Humedad: " +
                      (data[3] as Weather).humidity.round().toString() +
                      "%"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Visibilidad: " +
                      (data[3] as Weather).visibility.round().toString() +
                      "millas"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Porcentaje de predicción: " +
                      (data[3] as Weather).predictability.toString() +
                      "%"),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: EdgeInsets.all(15),
              elevation: 20,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    kindOfImage((data[4] as Weather).weatherStateName),
                    height: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fecha: " +
                        formatter.format((data[4] as Weather).applicableDate),
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Estado meteorológico: " +
                      (data[4] as Weather).weatherStateName),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura: " +
                      (data[4] as Weather).theTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura máxima: " +
                      (data[4] as Weather).maxTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura mínima: " +
                      (data[4] as Weather).minTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[4] as Weather).windDirectionCompass),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Velocidad del viento: " +
                      (data[4] as Weather).windSpeed.round().toString() +
                      "mph"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[4] as Weather).windDirection.round().toString() +
                      "°"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Presión de aire: " +
                      (data[4] as Weather).airPressure.round().toString() +
                      " milibar"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Humedad: " +
                      (data[4] as Weather).humidity.round().toString() +
                      "%"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Visibilidad: " +
                      (data[4] as Weather).visibility.round().toString() +
                      "millas"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Porcentaje de predicción: " +
                      (data[4] as Weather).predictability.toString() +
                      "%"),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: EdgeInsets.all(15),
              elevation: 20,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    kindOfImage((data[5] as Weather).weatherStateName),
                    height: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fecha: " +
                        formatter.format((data[5] as Weather).applicableDate),
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Estado meteorológico: " +
                      (data[5] as Weather).weatherStateName),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura: " +
                      (data[5] as Weather).theTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura máxima: " +
                      (data[5] as Weather).maxTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Temperatura mínima: " +
                      (data[5] as Weather).minTemp.round().toString() +
                      "°C"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[5] as Weather).windDirectionCompass),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Velocidad del viento: " +
                      (data[5] as Weather).windSpeed.round().toString() +
                      "mph"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Dirección del viento: " +
                      (data[5] as Weather).windDirection.round().toString() +
                      "°"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Presión de aire: " +
                      (data[5] as Weather).airPressure.round().toString() +
                      " milibar"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Humedad: " +
                      (data[5] as Weather).humidity.round().toString() +
                      "%"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Visibilidad: " +
                      (data[5] as Weather).visibility.round().toString() +
                      "millas"),
                  SizedBox(
                    height: separation,
                  ),
                  Text("Porcentaje de predicción: " +
                      (data[5] as Weather).predictability.toString() +
                      "%"),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
