import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2/follower_modle.dart';
import 'package:flutter_2/home_page.dart';

final List<Follower> followers = [
  Follower(username: "kazi Afroz", friends: 345, image: ""),
  Follower(username: "Humayun kabir", friends: 456, image: ""),
  Follower(username: "Murshedul Haque", friends: 1098, image: ""),
  Follower(username: "Abir Hasan", friends: 456, image: ""),
  Follower(username: "Murshedul Hossain Babla", friends: 454, image: ""),
  Follower(username: "kabir Ali", friends: 3232, image: ""),
  Follower(username: "Ali Ahammed Jubayer", friends: 545, image: ""),
  Follower(username: "Ali Hasan Mashror", friends: 302, image: ""),
  Follower(username: "Mashrafee Bin Mortaza", friends: 511, image: ""),
  Follower(username: "Mehedi Hasan", friends: 111, image: ""),
];

class FollowerPage extends StatefulWidget {
  @override
  _FollowerPageState createState() => _FollowerPageState();
}

class _FollowerPageState extends State<FollowerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 250, 251, 1),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(86, 86, 86, 1),
          ),
          iconSize: 20,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
        title: Text(
          "Follower Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(91, 91, 92, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(100, 101, 103, 1),
            ),
            iconSize: 20,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FollowerPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Text("Follower Page"),
      ),
    );
  }
}
