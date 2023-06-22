import 'package:flutter/material.dart';

class ChatUsers {
  String name;
  String messageText;
  String imagePath;
  String time;
  ChatUsers(
      {required this.name,
      required this.messageText,
      required this.imagePath,
      required this.time});
}
