import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(0, 0, 0, 0.018),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        grayText("Welcome Leyla"),
                        blackText("Explore nutrition consultant")
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(19)),
                          child: Icon(
                            Icons.sunny,
                            color: Color.fromRGBO(34, 182, 0, 1),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(19)),
                          child: Icon(
                            Icons.notifications,
                            color: Color.fromRGBO(34, 182, 0, 1),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color.fromRGBO(0, 0, 0, 0.08),
                              size: 35,
                            ),
                            grayText("Istanbul/Turkey"),
                          ],
                        ),
                        Icon(
                          Icons.tune,
                          color: Color.fromRGBO(34, 182, 0, 1),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              newTopic("Top dietitians"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    newDietitian("assets/images/profile/p1.jpg", "Ahmet Över"),
                    newDietitian(
                        "assets/images/profile/p2.jpg", "Keyvan Arasteh"),
                    newDietitian("assets/images/profile/p3.jpg", "Ramazan Şen"),
                    newDietitian("assets/images/profile/p4.jpg", "Ece Tufan"),
                    newDietitian(
                        "assets/images/profile/p5.jpg", "Mehmet Fatih"),
                    newDietitian("assets/images/profile/p6.jpg", "Rahime Hacı"),
                    newDietitian(
                        "assets/images/profile/p7.jpg", "Mahmut Yıldız"),
                    newDietitian("assets/images/profile/p8.jpg", "Özden Uygun"),
                    newDietitian(
                        "assets/images/profile/p9.jpg", "Oktay Karagöz"),
                    newDietitian(
                        "assets/images/profile/p10.jpg", "Muammer Demirci"),
                  ],
                ),
              ),
              newEndline(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          newTopic("Near you"),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                newAdvert("assets/images/banner1.jpg",
                                    "Ahmet Selim", "5", "150"),
                                newAdvert("assets/images/banner2.jpg",
                                    "Keyvan Arasteh", "7", "200"),
                                newAdvert("assets/images/banner3.jpg",
                                    "Ece Tufan", "8", "2000"),
                                newAdvert("assets/images/banner4.jpg",
                                    "Rahime Hacı", "10", "700"),
                                newAdvert("assets/images/banner5.jpg",
                                    "Özden Uygun", "11", "600"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      newEndline(),
                      Column(
                        children: [
                          newTopic("Top Five"),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                newAdvert("assets/images/banner3.jpg",
                                    "Ece Tufan", "8", "2000"),
                                newAdvert("assets/images/banner4.jpg",
                                    "Rahime Hacı", "10", "700"),
                                newAdvert("assets/images/banner5.jpg",
                                    "Özden Uygun", "11", "600"),
                                newAdvert("assets/images/banner2.jpg",
                                    "Keyvan Arasteh", "7", "200"),
                                newAdvert("assets/images/banner1.jpg",
                                    "Ahmet Selim", "5", "150"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      newEndline(),
                      Column(
                        children: [
                          newTopic("Recoomended"),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                newAdvert("assets/images/banner2.jpg",
                                    "Keyvan Arasteh", "7", "200"),
                                newAdvert("assets/images/banner1.jpg",
                                    "Ahmet Selim", "5", "150"),
                                newAdvert("assets/images/banner3.jpg",
                                    "Ece Tufan", "8", "2000"),
                                newAdvert("assets/images/banner5.jpg",
                                    "Özden Uygun", "11", "600"),
                                newAdvert("assets/images/banner4.jpg",
                                    "Rahime Hacı", "10", "700"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      bottomPages(Icons.home_rounded, "Home"),
                      bottomPages(Icons.people_alt_rounded, "Community"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: 45,
                              height: 36,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(34, 182, 0, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.white,
                              )),
                          Text(
                            "Book a Calendar",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      bottomPages(Icons.send_rounded, "Chat"),
                      bottomPages(Icons.person_2_rounded, "Profile")
                    ],
                  ),
                ),
              ),
            ], //unutmaaaa
          ),
        )));
  }

  Column newEndline() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 2,
          decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.05)),
        ),
      ],
    );
  }

  Padding newAdvert(String banner, String name, String distance, String price) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 250,
            height: 184,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    banner,
                    width: 250,
                    height: 139,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          blackTextSmall(name),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 20,
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                              ),
                              grayTextSmall(distance),
                              Text(" "),
                              grayTextSmall("km from you")
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(34, 182, 0, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: grayTextSmall(price + " ₺/week"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Text blackTextSmall(newtext) {
    return Text(newtext,
        style: TextStyle(
            color: Color.fromRGBO(
              0,
              0,
              0,
              0.87,
            ),
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 15));
  }

  Padding newTopic(String topic) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [blackText(topic), grayText("View all")],
      ),
    );
  }

  Text blackText(String newtext) {
    return Text(newtext,
        style: TextStyle(
            color: Color.fromRGBO(
              0,
              0,
              0,
              0.87,
            ),
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 20));
  }

  Text grayTextSmall(String newtext) {
    return Text(
      newtext,
      style: TextStyle(
          color: Color.fromRGBO(
            0,
            0,
            0,
            0.2,
          ),
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: 13),
    );
  }

  Text grayText(String newtext) {
    return Text(
      newtext,
      style: TextStyle(
          color: Color.fromRGBO(
            0,
            0,
            0,
            0.1,
          ),
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: 20),
    );
  }

  Padding newDietitian(String profile, String dietitian) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Color.fromRGBO(123, 227, 130, 1),
                shape: BoxShape.circle),
            child:
                CircleAvatar(backgroundImage: AssetImage(profile), radius: 40),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            dietitian,
            overflow: TextOverflow.clip,
          )
        ],
      ),
    );
  }

  Column bottomPages(IconData pageicon, String page) {
    return Column(
      children: [
        Icon(
          pageicon,
          size: 35,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        Text(
          page,
          style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
