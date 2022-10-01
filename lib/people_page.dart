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

  Widget itemPersonWidget(Map<String, dynamic> data) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      elevation: 5,
      shadowColor: Colors.black.withOpacity(0.2),
      child: ListTile(
        title: Text(
          data["name"],
        ),
        subtitle: Text("Teléfono: ${data["phone"]}"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("People Page (${people2.length})"),
        actions: [
          IconButton(
            onPressed: () {
              // Map<String, dynamic> myMap = {
              //   "id": 4,
              //   "name": "Fernanda Lopez",
              //   "phone": "656565656",
              // };
              //
              // people.add(myMap);

              UserModel person =
                  UserModel(id: 3, name: "Catalina Montes", phone: "354545");

              people2.add(person);

              setState(() {});
            },
            icon: Icon(
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

class ItemPersonWidget extends StatelessWidget {
  // Map<String, dynamic> data;
  UserModel data;

  ItemPersonWidget({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      elevation: 5,
      shadowColor: Colors.black.withOpacity(0.2),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.indigo,
          child: Text(
            data.name[0],
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        title: Text(
          data.name,
        ),
        subtitle: Text("Teléfono: ${data.phone}"),
      ),
    );
  }
}
