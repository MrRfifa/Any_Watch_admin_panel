import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String name;
  final String mess;
  final String email;

  MessageModel({
    required this.email,
    required this.mess,
    required this.name,
  });
}
