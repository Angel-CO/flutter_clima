import 'package:flutter/material.dart';
import 'package:flutter_clima/data/data_constants.dart';
import 'package:flutter_clima/model/city.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'list_cities_screen.dart';

class HomeScreem extends StatelessWidget {
  final cityName = TextEditingController();
  List<City> cities;

  String city = '';
  void _goToCitiesScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ListCitiesScreen(cities),
      ),
    );
  }

  void searchCities(BuildContext context) async {
    
    String _url = api + 'search/?query=' + city;
    print(_url);
    Uri url = Uri.parse(_url);
    final response = await http.get(url);
    final data = jsonDecode(response.body) as List;
    cities = data.map((e) => City.fromJson(e)).toList();

    if(cities.length > 0){
      _goToCitiesScreen(context);
    }else{
      showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alerta"),
          content: Text("No se encontraron coincidencias"),
        );
      }
    );
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/images/logo.png',
            height: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Bienvenido',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Busque una ciudad',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: TextField(
              controller: cityName,
              decoration: InputDecoration(labelText: "Ciudad"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 50,
            child: RaisedButton(
              color: Colors.blue,
              elevation: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                'Buscar',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () => {
                if (cityName.text == '')
                  {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Alerta"),
                          content: Text("Ingrese una ciudad"),
                        );
                      }
                    )
                  }
                else
                  {
                    city = cityName.text,
                    searchCities(context),
                    
                  }
              },
            ),
          ),
        ],
      ),
    );
  }
}
