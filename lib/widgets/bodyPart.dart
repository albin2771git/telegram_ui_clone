import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telegram_ui/widgets/listTile.dart';
import 'package:telegram_ui/widgets/listTile2.dart';

class BodyPart extends StatelessWidget {
  //const BodyPart({super.key});
  List Avatarimg = [
    'https://images.pexels.com/photos/2422290/pexels-photo-2422290.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1000445/pexels-photo-1000445.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://img.icons8.com/color/2x/telegram-app.png',
    'https://images.pexels.com/photos/1391498/pexels-photo-1391498.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1898555/pexels-photo-1898555.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/66134/pexels-photo-66134.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/69378/pexels-photo-69378.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2726370/pexels-photo-2726370.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2422290/pexels-photo-2422290.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1963622/pexels-photo-1963622.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTileWidget(
          Title: 'Friends of Kochi',
          SubTitle: 'Hi',
          Avatarimg: Avatarimg[0],
          time: '9:30 PM',
        ),
        ListTileWidgetIn(
          Title: 'Btech  2k22',
          SubTitle: 'Okey',
          Avatarimg: Avatarimg[1],
          time: '8:00 PM',
        ),
        ListTileWidgetInC(
          Title: 'Telegram',
          SubTitle: '😁💕😒❤️🤣😂😍😘',
          Avatarimg: Avatarimg[2],
          time: '8:00 PM',
          MsgCount: '4',
        ),
        ListTileWidgetInC(
            Title: 'Merlin',
            SubTitle: 'Good',
            Avatarimg: Avatarimg[3],
            time: '7:23 PM',
            MsgCount: '7'),
        ListTileWidgetInC(
            Title: 'Merin',
            SubTitle: 'yeah',
            Avatarimg: Avatarimg[4],
            time: '7:1 PM',
            MsgCount: '2'),
        ListTileWidgetInC(
            Title: 'Movie World',
            SubTitle: 'Avengers Endgame',
            Avatarimg: Avatarimg[5],
            time: '7:13 PM',
            MsgCount: '21'),
        ListTileWidgetInC(
            Title: 'Anime World',
            SubTitle: 'One Pieace Season 5, Episode 6',
            Avatarimg: Avatarimg[6],
            time: '7:13 PM',
            MsgCount: '41'),
        ListTileWidgetInC(
            Title: 'Kiran ',
            SubTitle: 'Bro',
            Avatarimg: Avatarimg[7],
            time: 'Mon',
            MsgCount: '3'),
        ListTileWidgetInC(
            Title: 'Christopher',
            SubTitle: 'Done',
            Avatarimg: Avatarimg[8],
            time: 'Mon',
            MsgCount: '68'),
        ListTileWidgetInC(
            Title: 'NetFlix Movies',
            SubTitle: 'wednesday Season 1, Episode 6',
            Avatarimg: Avatarimg[9],
            time: 'Tue',
            MsgCount: '73'),
        ListTileWidgetInC(
            Title: 'Developers Club',
            SubTitle: 'send the file',
            Avatarimg: Avatarimg[10],
            time: 'wed',
            MsgCount: '101'),
        ListTileWidgetInC(
            Title: 'Association',
            SubTitle: 'Collect it',
            Avatarimg: Avatarimg[11],
            time: 'wed',
            MsgCount: '119')
      ],
    );
  }
}
