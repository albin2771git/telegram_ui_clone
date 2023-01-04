import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telegram_ui/widgets/Contact_tile.dart';

class New_Message extends StatelessWidget {
  //const New_Message({super.key});
  List Avatarimg = [
    'https://images.pexels.com/photos/1040945/pexels-photo-1040945.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1964970/pexels-photo-1964970.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1642228/pexels-photo-1642228.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/884979/pexels-photo-884979.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/236214/pexels-photo-236214.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3018993/pexels-photo-3018993.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1197132/pexels-photo-1197132.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1729931/pexels-photo-1729931.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'New Message',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.menu_open_sharp),
          )
        ],
      ),
      body: ListView(children: [
        Contact_tile(iconname: Icon(Icons.group_add), Title: 'New Group'),
        Contact_tile(iconname: Icon(Icons.lock), Title: 'New Secret Chat'),
        Contact_tile(iconname: Icon(Icons.announcement), Title: 'New Channel'),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 20,
          child: Container(
            color: Colors.grey[300],
            child: Center(child: Text('Sorted by last seen time')),
          ),
        ),
        Contact_tile_person(Avatarimg: Avatarimg[0], Title: 'Abhi'),
        Contact_tile_person(Avatarimg: Avatarimg[1], Title: 'Abhijith'),
        Contact_tile_person(Avatarimg: Avatarimg[2], Title: 'Binu'),
        Contact_tile_person(Avatarimg: Avatarimg[3], Title: 'Bijil'),
        Contact_tile_person(Avatarimg: Avatarimg[4], Title: 'Ciena'),
        Contact_tile_person(Avatarimg: Avatarimg[5], Title: 'Deepa'),
        Contact_tile_person(Avatarimg: Avatarimg[6], Title: 'Fradric'),
        Contact_tile_person(Avatarimg: Avatarimg[7], Title: 'Francis'),
        Contact_tile_person(Avatarimg: Avatarimg[8], Title: 'Eliza'),
        Contact_tile_person(Avatarimg: Avatarimg[9], Title: 'Elena'),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: 600,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 30),
                        child: Text(
                          'New Contact',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, right: 40, top: 10, bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "First Name(required)",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, right: 40, bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Last Name(Optional)",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, right: 40, bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Phone Number",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)))),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 10),
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              child: const Text('Create Contact'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 10),
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              child: const Text('Cancel'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.person_add,
          color: Colors.white,
        ),
      ),
    );
  }
}
