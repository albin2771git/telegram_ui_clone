import 'package:flutter/material.dart';

class Contact_tile extends StatelessWidget {
  final Icon iconname;
  final String Title;

  const Contact_tile({
    super.key,
    required this.iconname,
    required this.Title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: iconname,
      title: Text(
        Title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class Contact_tile_person extends StatelessWidget {
  final String Avatarimg;
  final String Title;

  const Contact_tile_person({
    super.key,
    required this.Avatarimg,
    required this.Title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(Avatarimg)),
      title: Text(
        Title,
        style: TextStyle(color: Colors.black),
      ),
      subtitle: Text('last seen recently'),
    );
  }
}
