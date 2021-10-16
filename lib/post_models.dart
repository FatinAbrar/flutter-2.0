import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_2/home_page.dart';
import 'package:flutter_2/models/Posts_Model.dart';

class Posts{
  Posts ({
    this.address,
    this.username,
    this.caption,
    this.postImage,
    this.userPhoto
}
);

  String username;
  String address;
  String caption;
  String postImage;
  String userPhoto;
}