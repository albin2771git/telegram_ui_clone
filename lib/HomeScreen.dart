import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telegram_ui/new_message.dart';
import 'package:telegram_ui/widgets/bodyPart.dart';
import 'package:telegram_ui/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 30),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Telegram",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          )
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => New_Message()));
          },
          child: Icon(Icons.edit)),
      body: BodyPart(),
    );
  }
}
