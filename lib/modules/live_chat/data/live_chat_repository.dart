import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/message_model.dart';

class LiveChatRepository {
  final _firestore = FirebaseFirestore.instance;

  Future<void> sendMessage(MessageModel message) async {
    await _firestore.collection('messages').add(message.toMap());
  }

  Stream<List<MessageModel>> getMessagesStream() {
    return _firestore
        .collection('messages')
        .orderBy('time', descending: true)
        .snapshots()
        .map((snapshot) {
          return snapshot.docs
              .map((doc) => MessageModel.fromMap(doc.data()))
              .toList();
        });
  }
}
