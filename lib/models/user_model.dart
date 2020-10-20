import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String id;
  String name;
  String email;
  String imageUrl;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.imageUrl,
  });

  UserModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    id = doc.id;
    name = doc["name"];
    email = doc["email"];
    imageUrl = doc["email"];
  }
}

UserModel currentUser = UserModel(
  id: '1',
  name: 'firstname',
  email: 'first@gmail.com',
  imageUrl: 'image',
);

UserModel sam = UserModel(
  id: '2',
  name: 'Sam',
  email: 'sam@gmail.com',
  imageUrl: 'image',
);

List<UserModel> mockUserFavorite = [
  currentUser,
  sam,
  sam,
  currentUser,
  sam,
  currentUser,
];
