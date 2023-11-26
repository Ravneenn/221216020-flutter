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
              // 62 36 17
              // 48 14 32
              Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(62, 36, 17, 1),
                  Color.fromRGBO(48, 14, 32, 1)
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/ytbm_logo.png",
                            scale: 2.2,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.podcasts,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage("assets/images/profile1.jpg"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryItem("Energize"),
                          CategoryItem("Workout"),
                          CategoryItem("Relaxation"),
                          CategoryItem("Chill out"),
                          CategoryItem("Rock"),
                          CategoryItem("Pop"),
                          CategoryItem("Indie")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Color.fromRGBO(20, 0, 0, 1),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, right: 18.0, top: 38.0, bottom: 38.0),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("START RADIO FROM A SONG",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Quick picks",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30,
                                      )),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 6.0,
                                        bottom: 6.0,
                                        left: 12.0,
                                        right: 12.0),
                                    margin: const EdgeInsets.only(
                                        left: 3, right: 3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255))),
                                    child: Text(
                                      "Play all",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              newSong("images/cover6.jpg", "Ayran Samet",
                                  "Yastikli Choir"),
                              newSong("images/cover1.jpg", "Moment",
                                  "Paul Wetz & DillStone"),
                              newSong("images/cover2.jpg", "Warrior",
                                  "Oscar And The Wolf"),
                              newSong("images/cover3.jpg", "Cymatics",
                                  "Nigel Stanford"),
                              newSong("images/cover4.jpg", "Burning Sun",
                                  "Monolink"),
                              newSong("images/cover5.jpg", "Oluyorum",
                                  "Hayko Cepkin"),
                              newSong(
                                  "images/cover7.jpg", "Inanmazsin", "Can Gox"),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Forgotten favorites",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30,
                                      )),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 6.0,
                                        bottom: 6.0,
                                        left: 12.0,
                                        right: 12.0),
                                    margin: const EdgeInsets.only(
                                        left: 3, right: 3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255))),
                                    child: Text(
                                      "Play all",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    newArtist("images/cover1.jpg", "Moments",
                                        "Paul Wetz"),
                                    newArtist("images/cover8.jpeg", "Symphony",
                                        "Hayko Cepkin"),
                                    newArtist("images/cover7.jpg", "Sunny",
                                        "Margot Robbie"),
                                    newArtist("images/cover3.jpg", "Favela",
                                        "Neymar JR"),
                                    newArtist("images/cover6.jpg",
                                        "Döner Ayran", "Yastikli Choir"),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Color.fromRGBO(33, 33, 33, 1),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      bottomPages(Icons.home, "Home"),
                      bottomPages(Icons.play_arrow, "Samples"),
                      bottomPages(Icons.explore, "Explore"),
                      bottomPages(Icons.library_music, "Library"),
                      bottomPages(Icons.workspace_premium, "Premium")
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Padding newArtist(String albumcover, String albumname, String artistname) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image(
            image: AssetImage(albumcover),
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              albumname,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text(
              artistname,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding newSong(String cover, String song, String artist) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage(cover),
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        song,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        artist,
                        style: TextStyle(
                          color: Color.fromRGBO(150, 150, 150, 1),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            )
          ],
        ));
  }

  Column bottomPages(IconData pageicon, String page) {
    return Column(
      children: [
        Icon(
          pageicon,
          size: 35,
          color: Colors.white,
        ),
        Text(
          page,
          style: TextStyle(color: Colors.white, fontSize: 10),
        )
      ],
    );
  }

  Container CategoryItem(String text) {
    return Container(
      padding:
          const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right: 12.0),
      margin: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
          color: const Color.fromARGB(44, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color.fromARGB(15, 255, 255, 255))),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
