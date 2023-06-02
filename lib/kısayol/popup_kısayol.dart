import 'package:flutter/material.dart';

class popupMenuBtn extends StatelessWidget {
  const popupMenuBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (selected) {
        if (selected == 5) {
          Navigator.pushNamed(context, 'settingsPage');
        }
      },
      elevation: 10,
      padding: const EdgeInsets.symmetric(vertical: 20),
      iconSize: 28,
      itemBuilder: (context) => [
        const PopupMenuItem(
            value: 1,
            child: Text(
              'New Group',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            )),
        const PopupMenuItem(
            value: 2,
            child: Text(
              'New Broadcast',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            )),
        const PopupMenuItem(
            value: 3,
            child: Text(
              'Linked devices',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            )),
        const PopupMenuItem(
            value: 4,
            child: Text(
              'Starred Messages',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            )),
        const PopupMenuItem(
            value: 5,
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ))
      ],
    );
  }
}
