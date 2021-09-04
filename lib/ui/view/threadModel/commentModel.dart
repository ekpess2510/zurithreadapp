import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CommentModel extends BaseViewModel {
  String _image1 = "images/Rectangle 172.png";
  String _usernames = "Fierce";
  String _emoji = "images/Group 1280.png";
  String _time = "3 hours ago";
  String _comments = "Are you in team Socrates?";
  String get comments => _comments;
  String get time => _time;
  String get emoji => _emoji;
  String get image1 => _image1;
  String get usernames => _usernames;
}
