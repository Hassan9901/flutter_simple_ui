// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../utilties/emoji_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Massage Box'),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Hi,Hassan
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Hi,Hassan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '5 May,2022',
                        style: TextStyle(color: Colors.blue[100]),
                      )
                    ],
                  ),
                ),
                //Notification
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(13)),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            //Search Bar

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),

            // How do you feel
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you Feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // Four Diffrent Faces
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //bad
                Column(
                  children: [
                    emojiface(
                      emojifacce: '🙂',
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Bad',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                //fine
                Column(
                  children: [
                    emojiface(
                      emojifacce: '🥰',
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Fine',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),

                //well
                Column(
                  children: [
                    emojiface(
                      emojifacce: '😃',
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Well',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                //execllent

                Column(
                  children: [
                    emojiface(
                      emojifacce: '😁',
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Execllent',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),

            //Big white screen
            Expanded(
                child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.grey[100],
              child: Center(
                  child: Column(
                children: [
                  //Excersie handling
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Excercise',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //List view of All Excercise's
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.orange,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //title
                              Text(
                                'Speaking Skill',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //subtitile
                              Text(
                                '15 Excerceris',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              )),
            ))
          ],
        ),
      ),
    );
  }
}
