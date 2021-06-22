import 'package:flutter/material.dart';

class CitiesScreem extends  StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Ciudades'),
      ),
      floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Colors.blue,
              onPressed: () => {},
            ),
          ),
      body: Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //Expanded(
                    /*
                    child: bloc.cities.isEmpty
                        ? Center(
                            child: Text('No tienes ciudades :('),
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            itemCount: bloc.cities.length,
                            itemBuilder: (context, index) {
                              final city = bloc.cities[index];
                              return CityItem(
                                city: city,
                                onTap: () => handleDeleteTap(city),
                              );
                            },
                          ),
                    */
                  //),
                ],
              ),
            ),
          ),
    );
  }
}