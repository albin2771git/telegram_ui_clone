import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(color: Colors.blue),
            child: Stack(children: [
              Positioned(
                left: 20,
                top: 20,
                child: Column(
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      minRadius: 25,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 5),
                      child: Text(
                        'User Name',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      '+91 9876543210',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Icon(
                  Icons.sunny,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 20,
                bottom: 30,
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              )
            ]),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.group_add),
            title: Text(
              'New Group',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.person),
            title: Text(
              'Contacts',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.call),
            title: Text(
              'Calls',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.location_history),
            title: Text(
              'People Nearby',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.save),
            title: Text(
              'Saved Messages',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.person_add_alt),
            title: Text(
              'Invite Friends',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.help),
            title: Text(
              'Telegram Features',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
