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

  Widget itemPersonWidget(){
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      elevation: 5,
      shadowColor: Colors.black.withOpacity(0.2),
      child: ListTile(
        title: Text("Juan Carlos",),
        subtitle: Text("Teléfono: 34324324334"),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("People Page"),
      ),
      body: Column(
        children: [
          Text(
            "Lista de personas",
          ),

          ...List.generate(
            people.length,
            (index) => itemPersonWidget(),
          ),

          Divider(),

          ...people
              .map(
                (item) => itemPersonWidget(),
              )
              .toList(),
        ],
      ),
    );
  }
}
