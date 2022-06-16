import 'package:admin_panel/model/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

late MessageModel message;
List<MessageModel> messages = [
  //MessageModel(email: 'email', mess: 'mess', name: 'name'),
];

class MessageProvider with ChangeNotifier {
  Future<List<MessageModel>> getMessageData() async {
    List<MessageModel> tempList = [];
    QuerySnapshot messagesSnapshot =
        await FirebaseFirestore.instance.collection('Message').get();

    messagesSnapshot.docs.forEach(
      (element) {
        message = MessageModel(
          name: element.get('Name'),
          email: element.get('Email'),
          mess: element.get('Message'),
        );
        tempList.add(message);
      },
    );
    messages = tempList;
    notifyListeners();
    return messages;
  }

  List<MessageModel> get getMessageList {
    return messages;
  }

  int get getMessagesListLength {
    return messages.length;
  }
}
