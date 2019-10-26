import 'package:flutter/foundation.dart';

class User {
  String fullName;
  String imageUrl;
  bool isOnline;
  bool isTyping;

  User({@required this.fullName, this.imageUrl});
}