import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListTileWidget extends StatelessWidget {
  final String Title;
  final String SubTitle;
  final String Avatarimg;
  final String time;

  const ListTileWidget({
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
            Icons.check,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
