
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

        ],
      ),
    );
  }
}
