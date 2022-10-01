import 'package:codigo2_people/item_person_widget.dart';
import 'package:codigo2_people/user_model.dart';
import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
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

  List<UserModel> people2 = [
    UserModel(id: 1, name: "Daniel Lopez", phone: "232323"),
    UserModel(id: 2, name: "Elvis Barrionuevo", phone: "6565656"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("People Page (${people2.length})"),
        actions: [
          IconButton(
            onPressed: () {
              UserModel person =
                  UserModel(id: 3, name: "Catalina Montes", phone: "354545");

              people2.add(person);

              setState(() {});
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          //children: List.generate(people2.length, (index) => ItemPersonWidget(data: people2[index])),
          children:
              people2.map<Widget>((e) => ItemPersonWidget(data: e)).toList(),
        ),
      ),
    );
  }
}




