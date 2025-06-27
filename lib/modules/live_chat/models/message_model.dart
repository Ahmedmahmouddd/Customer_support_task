import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String message;
  final String sender;
  final DateTime time;

  MessageModel({
    required this.message,
    required this.sender,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'sender': sender,
      'time': Timestamp.fromDate(time),
    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      message: map['message'] ?? '',
      sender: map['sender'] ?? '',
      time: (map['time'] as Timestamp).toDate(),
    );
  }
}
