import 'package:flutter_clima/model/weather.dart';

class City {
  final String title;
  final int id;

  City({
    this.title,
    this.id,
  });

  Map<String, dynamic> toJson() => {
        "title": title,
        "woeid": id,
      };

  factory City.fromJson(Map<String, dynamic> map) {
    return City(
      id: map['woeid'],
      title: map['title'],
    );
  }

  City fromWeathers(List<Weather> weathers) {
    return City(
      id: id,
      title: title,
    );
  }
}
