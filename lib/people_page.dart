
import 'package:flutter/material.dart';

class PeoplePage extends StatelessWidget {

  List<Map<String, dynamic>> people = [
    {
      "id": 1,
      "name": "José Carlos Montes",
      "phone": "987232222",
    },
    {
      "id": 2,
      "name": "Fiorella Marquez",
      "phone": "555333222",
    },
    {
      "id": 3,
      "name": "Luis Arias",
      "phone": "123222444",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("People Page"),
      ),
      body: Column(
        children: [
          Text("Lista de personas" ,),
          ...List.generate(people.length, (index) => Text(people[index]["name"],),),
          ...people.map((item) => Text(item["name"])).toList(),
        ],
      ),
    );
  }
}
