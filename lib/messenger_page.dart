import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2/home_page.dart';

import 'models/MessangerModel.dart';

List<String> images = [
  "images/profiles/profile1.jpg",
  "images/profiles/profile2.jpg",
  "images/profiles/profile3.jpg",
  "images/profiles/profile4.jpg",
  "images/profiles/profile5.jpg",
  "images/profiles/profile6.jpg",
  "images/profiles/profile7.jpg",
  "images/profiles/profile8.jpg",
  "images/profiles/profile9.jpg",
  "images/profiles/profile10.jpg",
];
List<MessangerModel> messangerModels = [
  MessangerModel(
      username: "Monkey D. Luffy",
      lastmessage: "Hi",
      userImageUrl: "images/profiles/profile1.jpg"),
  MessangerModel(
      username: " Roronoa Zoro",
      lastmessage: "How are you??",
      userImageUrl: "images/profiles/profile2.jpg"),
  MessangerModel(
      username: "Nami",
      lastmessage: "How do you do??",
      userImageUrl: "images/profiles/profile3.jpg"),
  MessangerModel(
      username: "Nico Robin",
      lastmessage: "I want To go to the sea with you",
      userImageUrl: "images/profiles/profile4.jpg"),
  MessangerModel(
      username: "Candy Lover Chopper",
      lastmessage: "Lets go robin",
      userImageUrl: "images/profiles/profile5.jpg"),
  MessangerModel(
      username: "Vings smoke Sanji",
      lastmessage: "Any one want to eat??",
      userImageUrl: "images/profiles/profile6.jpg"),
  MessangerModel(
      username: "Jimbei",
      lastmessage: "Luffyyyyyyyyyyy??",
      userImageUrl: "images/profiles/profile7.jpg"),
  MessangerModel(
      username: "Franky",
      lastmessage: "Suuupppeerrrr",
      userImageUrl: "images/profiles/profile8.jpg"),
  MessangerModel(
      username: "Usopp",
      lastmessage:
      "it Was Fake Of course it was fake! I can't lift five tons! I quit after five pounds!",
      userImageUrl: "images/profiles/profile9.jpg"),
  MessangerModel(
      username: "Brook",
      lastmessage: "Yohohoho! Let's go!",
      userImageUrl: "images/profiles/profile10.jpg"),
];

class MessengerPage extends StatefulWidget {
  @override
  _MessengerPageState createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(11, 95, 179, 1.0),
        leading: IconButton(
          icon: const Icon(
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
          "Messenger Page",
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
                  builder: (context) => MessengerPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          // Header Text slivertoboxAdapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 25,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Text(
                "Friends",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 0, 0, .6),
                ),
              ),
            ),
          ),

          //friend list view builder slivertoboxadapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 10,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 5,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("${images[index]}"),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(10, 255, 10, 1),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          //Message text slivertoboxadapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 25,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Text(
                "Messages",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(141, 16, 16, 1.0),
                ),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 8,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                                "${messangerModels[index].userImageUrl}"),
                          ),
                          Positioned(
                            top: MediaQuery
                                .of(context)
                                .size
                                .height / 10,
                            left: MediaQuery
                                .of(context)
                                .size
                                .height / 11,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Color.fromRGBO(10, 255, 10, 1),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 1.5,
                        padding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text: "${messangerModels[index].username}\n",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            children: [
                              TextSpan(
                                text: "${messangerModels[index].lastmessage}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(21, 21, 21, .6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: messangerModels.length,
            ),
          ),
        ],
      ),
    );
  }
}
