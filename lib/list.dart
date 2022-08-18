import 'package:flutter/material.dart';

class MyListApp extends StatelessWidget {
  MyListApp({Key? key}) : super(key: key);


  List names = ["Ama", "yaw", "Ben", "Kwasi", "Kofi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(),
            title: Text(names[index]),
            subtitle: Text("am going home"),
            trailing: Column(
              children: [
                Text("10:00"),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                  child: Text(index.toString()),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
