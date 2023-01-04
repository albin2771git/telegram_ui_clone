import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/HomeScreen.dart';
import 'package:telegram_ui/new_message.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),
    //home: New_Message(),
    home: HomeScreen(),
  ));
}
