import 'package:circle/models/user_model.dart';

class MessageModel {
  final UserModel sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  MessageModel({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

final MessageModel mockupMessage1 = MessageModel(
  sender: sam,
  time: '15.30',
  text: 'hello world hello world hello world ',
  isLiked: false,
  unread: true,
);

final MessageModel mockupMessage2 = MessageModel(
  sender: currentUser,
  time: '17.30',
  text: 'world hello 123 3231 1234 513123 123 ',
  isLiked: true,
  unread: false,
);

List<MessageModel> mockupRecentMessage = [
  mockupMessage1,
  mockupMessage2,
  mockupMessage1,
  mockupMessage2,
  mockupMessage1,
  mockupMessage2,
  mockupMessage1,
  mockupMessage1,
  mockupMessage1,
  mockupMessage2,
];
