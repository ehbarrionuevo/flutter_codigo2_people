import 'package:codigo2_people/user_model.dart';
import 'package:flutter/material.dart';

class ItemPersonWidget extends StatelessWidget {

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
            style: const TextStyle(
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