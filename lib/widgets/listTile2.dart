import 'package:flutter/material.dart';

class ListTileWidgetIn extends StatelessWidget {
  final String Title;
  final String SubTitle;
  final String Avatarimg;
  final String time;

  const ListTileWidgetIn({
    super.key,
    required this.Title,
    required this.SubTitle,
    required this.Avatarimg,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    // var tick = Icon(
    //   Icons.check,
    //   color: Colors.blue,
    // );

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(Avatarimg),
      ),
      title: Text(
        Title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(SubTitle),
      trailing: Column(
        children: [
          Text(time),
          Icon(
            Icons.checklist,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class ListTileWidgetInC extends StatelessWidget {
  final String Title;
  final String SubTitle;
  final String Avatarimg;
  final String time;
  final String MsgCount;

  const ListTileWidgetInC({
    super.key,
    required this.Title,
    required this.SubTitle,
    required this.Avatarimg,
    required this.time,
    required this.MsgCount,
  });

  @override
  Widget build(BuildContext context) {
    // var tick = Icon(
    //   Icons.check,
    //   color: Colors.blue,
    // );

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(Avatarimg),
      ),
      title: Text(
        Title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(SubTitle),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Text(time),
            CircleAvatar(
              maxRadius: 12,
              minRadius: 5,
              backgroundColor: Colors.blue,
              child: Center(
                child: Text(
                  MsgCount,
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
