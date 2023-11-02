import 'package:flutter/material.dart';

class FriendCard extends StatelessWidget {
  final String friendName;
  final Function onTap;

  FriendCard({required this.friendName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(friendName),
        onTap: () => onTap(),
      ),
    );
  }
}
