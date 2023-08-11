import 'package:flutter/material.dart';

import '../../business/add_to_trash/constants/items.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: users.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Text(users[index], style: TextStyle(fontSize: 22)),
                leading: Icon(Icons.face),
                trailing: IconButton(
                  icon: Icon(Icons.publish_sharp),
                  onPressed: () {},
                ),
                subtitle: Text("${companies[index]}"));
          }),
    );
  }
}
