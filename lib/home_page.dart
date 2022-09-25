
import 'package:codigo2_people/person.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  List<String> people = [
    "Juan Carlos",
    "Luis Gustavo",
    "Elvis Barrionuevo",
    "Dario Manuel",
  ];

  List<Person> people2 = [
    Person(name: "Elvis Barrionuevo", address: "Av. Lima 123", img: ""),
    Person(name: "Juan Lopez", address: "Av. Contreras 123", img: ""),
    Person(name: "Carlos Montes", address: "Av. Tacna 23123", img: ""),
    Person(name: "Fiorella Marquez", address: "Av. Cayma", img: ""),
  ];



  List<Widget> items = List.generate(10, (index) => Text("Hola"));

  @override
  Widget build(BuildContext context) {
    // print(List.generate(5, (index) => 23.22));
    return Scaffold(
      appBar: AppBar(
        title: Text("People"),
      ),
      body: Column(
        children:[
          Card(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            color: Colors.white,
            shadowColor: Colors.black.withOpacity(0.25),
            elevation: 4,
            child: ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage("https://images.pexels.com/photos/445109/pexels-photo-445109.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
              title: Text("Elvis Barrionuevo"),
              subtitle: Text("Jr. Gonzales Lopez 12323"),
            ),
          ),
          ...List.generate(10, (index) => Text("Hola")),
          ...[
            Text("Hola xxxxxx"),
            Text("Hola xxxxx2"),
          ],
          ...items,
          ...List.generate(people.length, (index) => Text(people[index])),
        ],
      ),
    );
  }
}
