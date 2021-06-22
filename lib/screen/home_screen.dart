import 'package:flutter/material.dart';

import 'cities_screen.dart';

class HomeScreem extends StatelessWidget {

  void _goToCitiesScreen(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => CitiesScreem(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 60,
          ),
          Image.asset(
            'assets/images/logo.png',
            height: 100,
          ),
          SizedBox(
            height: 30,
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
              'Consulte el clima del\n   lugar que desee',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            width: 100,
            child: RaisedButton(
              color: Colors.blue,
              elevation: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                'Iniciar',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () => _goToCitiesScreen(context),
            ),
          ),
        ],
      ),
    );
  }
}
