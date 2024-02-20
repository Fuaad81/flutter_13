// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List name = ['Fuaad', 'Shakir', 'Shameen', 'Vyshak', 'Arshid'];
  List sub = ['sugalle', 'evidro', 'daa', 'looi', 'asd'];
  List date = ['8:11', '8:07', '6:04', '5:25', '6:00'];
  List msg = ['4', '8', '2', '5', '3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/skull.jpg'),
            ),
            title: Text(
              name[index],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(sub[index]),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(date[index]),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green),
                  child: Center(
                      child: Text(
                    msg[index],
                    style: TextStyle(color: Colors.white),
                  )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
