// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_13/four.dart';
import 'package:flutter_13/one.dart';
import 'package:flutter_13/three.dart';
import 'package:flutter_13/two.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade900,
            iconTheme: IconThemeData(color: Colors.white),
            toolbarHeight: 30,
            title: Text(
              'WhatsApp',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                indicatorColor: Colors.white,
                tabs: [
                  Icon(
                    Icons.groups,
                    color: Colors.white,
                  ),
                  Text(
                    'Chats',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('Updates', style: TextStyle(color: Colors.white)),
                  Text('Calls', style: TextStyle(color: Colors.white)),
                ]),
          ),
          body: TabBarView(children: [
            Community(), //file name one
            Chats(), //file name two
            Updates(), //file name three
            Calls() //file name fore
          ]),
        ));
  }
}
