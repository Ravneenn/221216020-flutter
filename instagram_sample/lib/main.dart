import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        width: 100,
                      ),
                      Row(
                        children: [
                          Icon(Icons.add_rounded),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.favorite),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.send),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(color: Colors.white),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      newStory("images/pro1.jpeg", "derya.soyut"),
                      newStory("images/pro6.jpg", "ahmet.vurgun"),
                      newStory("images/pro3.jpeg", "john.doe"),
                      newStory("images/pro8.jpeg", "mahsun.karaca"),
                      newStory("images/pro2.jpg", "yaren.keski"),
                      newStory("images/pro5.jpeg", "ozan.tufan"),
                      newStory("images/pro10.jpg", "thamas.nerf"),
                      newStory("images/pro7.png", "nairolovic.smirnov"),
                      newStory("images/pro4.jpeg", "derin.weinn"),
                      newStory("images/pro9.jpg", "ilkay.gundogan"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          newPost("images/pro1.jpeg", "derya.soyut",
                              "images/pic1.jpeg", "Istanbul/Turkey"),
                          newComment("ahmet.vurgun",
                              "yorumlar yorumlar yorumlar yorumlar yorumlar yorumlar yorumlar yorumlar yorumlar yorumlar yorumlar yorumlar"),
                          newPost("images/pro8.jpeg", "mahsun.karaca",
                              "images/pic4.jpg", "Rams Park"),
                          newComment("mauro.icardi", "Askin Olayiiiiiiim <3"),
                          newPost(
                              "images/pro3.jpeg",
                              "john.doe",
                              "images/pic5.jpg",
                              "Espresso Lab / İstinye University"),
                          newComment("yaren.keskin", "hocam ders basladi.....")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home,
                      size: 35,
                    ),
                    Icon(
                      Icons.search,
                      size: 35,
                    ),
                    Icon(
                      Icons.smart_display,
                      size: 35,
                    ),
                    Icon(
                      Icons.favorite,
                      size: 35,
                    ),
                    Icon(
                      Icons.person_2,
                      size: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Container newPost(
      String profile, String username, String picture, String location) {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(profile),
                          radius: 25,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            username,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(location)
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
              Image(image: AssetImage(picture)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          size: 40,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.comment_outlined,
                          size: 40,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.flag_outlined,
                      size: 45,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding newComment(String username, String comment) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: username,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              TextSpan(text: " "),
              TextSpan(
                  text: comment,
                  style: TextStyle(
                    fontSize: 20,
                  ))
            ])),
          )
        ],
      ),
    );
  }

  Padding newStory(String profile, String username) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(231, 70, 109, 1),
                  Color.fromRGBO(91, 90, 194, 1)
                ]),
                shape: BoxShape.circle),
            child:
                CircleAvatar(backgroundImage: AssetImage(profile), radius: 40),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            username,
            overflow: TextOverflow.clip,
          )
        ],
      ),
    );
  }
}
