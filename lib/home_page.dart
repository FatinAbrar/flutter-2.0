import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_2/Splash_screen.dart';
import 'package:flutter_2/edit_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>SplashScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
          iconSize: 20,
        ),
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> EditPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 12,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black45,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Edit"),
                      Icon(Icons.create_outlined,size: 15,),
                    ]
                ),
              ),
            ),
          ),
        ],
        title: Text("Personal Info"),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // User name and bio Container start
              Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    // Profile Image Container
                    Container(
                      height: MediaQuery.of(context).size.height/7,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("images/Profile_Image.jpg"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Color.fromRGBO(52, 95, 97,1),
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),

                    // Address And Bio Container
                    Container(
                      width: MediaQuery.of(context).size.width/1.5,
                      height: MediaQuery.of(context).size.height/7,
                      child: Align(
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                              text: "Fatin Abrar\n",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black45,
                              ),
                              children: [
                                TextSpan(
                                  text: "kdjasfisufb",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width/3,
                child: Text(
                  "Hi I am Fatin Abrar"
                ),
              )
            ],


          ),
        ),
      ),
    );
  }
}
