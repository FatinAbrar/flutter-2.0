import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_2/home_page.dart';
import 'package:flutter_2/models/Posts_Model.dart';


List<Posts> posts = [
  Posts(
    username: "Fatin Abrar",
    userPhoto: "images/127452621_3762957817088549_8910024106066630309_n.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_1.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 871265,
  ),
  Posts(
    username: "Fatin Abrar",
    userPhoto: "images/127452621_3762957817088549_8910024106066630309_n.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_2.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 26699,
  ),
  Posts(
    username: "Fatin Abrar",
    userPhoto: "images/127452621_3762957817088549_8910024106066630309_n.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_3.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 73552,
  ),
  Posts(
    username: "Fatin Abrar",
    userPhoto: "images/127452621_3762957817088549_8910024106066630309_n.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_4.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 45796,
  ),
  Posts(
    username: "Fatin Abrar",
    userPhoto: "images/127452621_3762957817088549_8910024106066630309_n.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_5.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 586123,
  ),
  Posts(
    username: "Fatin Abrar",
    userPhoto: "images/127452621_3762957817088549_8910024106066630309_n.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_6.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 1245683,
  ),
  Posts(
    username: "Fatin Abrar",
    userPhoto: "images/127452621_3762957817088549_8910024106066630309_n.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_7.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 124653,
  ),
  Posts(
    username: "Fatin Abrar",
    userPhoto: "images/127452621_3762957817088549_8910024106066630309_n.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_8.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 1286623,
  ),
  Posts(
    username: "Fatin Abrar",
    userPhoto: "images/127452621_3762957817088549_8910024106066630309_n.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_9.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 56123,
  ),
  Posts(
    username: "Fatin Abrar",
    userPhoto: "images/127452621_3762957817088549_8910024106066630309_n.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_10.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 12263,
  ),
];

class PostsPage extends StatefulWidget {
  const PostsPage({Key key}) : super(key: key);

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 250, 251, 1),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(86,86,86,1),
          ),
          iconSize: 20,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>HomePage(),
              ),
            );
          },
        ),
        title: Text(
          "Posts Page",
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
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>PostsPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding:EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 20,
          ),
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(56, 67, 78, 1),
                        Color.fromRGBO(68, 78, 102, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        //User Name ,date And Photo Row

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('${posts[index].userPhoto}'),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/20,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                  text: "${posts[index].username}\n",
                                  style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color.fromRGBO(248, 248, 248,.6),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "${DateTime.now()}",
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: Color.fromRGBO(248, 248, 248,.6),
                                      ),
                                    )
                                  ]
                              ),
                            ),
                          ],
                        ),

                        //Address Row

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 18,
                              color: Color.fromRGBO(248, 248, 248,.6),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/30,
                            ),
                            Text(
                              "${posts[index].address}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                                color: Color.fromRGBO(248, 248, 248,.6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              );
            },
          ),
        ),
      ),
    );
  }
}
