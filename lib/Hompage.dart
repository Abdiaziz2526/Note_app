import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:note_app/Features/Qoutes.dart';
import 'package:note_app/HomeScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       // backgroundColor: Color(0xff4530b3),
       backgroundColor: Color(0xffdbe9f6),
        body: Column(
          children: [
            SizedBox(height: 75),
            // Padding(
            //   padding: const EdgeInsets.only(right: 190),
            //   child: Column(
            //     //crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(left: 50),
            //         child: Text(
            //           "Note App",
            //           style: TextStyle(
            //               fontSize: 30,
            //               color: Colors.white,
            //               fontWeight: FontWeight.w500),
            //         ),
            //       ),
                    
            //       // Text(
            //       //   "it's me Abdiaziz",
            //       //   style: TextStyle(
            //       //       fontSize: 22,
            //       //       color: Colors.white,
            //       //       fontWeight: FontWeight.w500),
            //       // ),
            //       // Text(
            //       //   "App developer",
            //       //   style: TextStyle(
            //       //       fontSize: 17,
            //       //       color: Colors.white,
            //       //       fontWeight: FontWeight.w300),
            //       // ),
            //     ],
            //   ),
            // ),
            Text(
                    "Note App",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff4530b3),
                        fontWeight: FontWeight.w500),
                  ),
            SizedBox(height: 0),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 180,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/ttt-01.jpg",
                          ),
                          fit: BoxFit.cover),
                      color: Color(0xff5451d6),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(blurRadius: 0.2, spreadRadius: 0.2)
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 245),
              child: Text(
                "Choose plan",
                style: TextStyle(
                    fontSize: 19,
                    color: Color(0xff4530b3),
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 17),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatNote()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff5451d6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                 FluentIcons.text_bullet_list_square_edit_24_filled,
                                size: 45,
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Note",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>QuoteNotes()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff5451d6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FluentIcons.text_quote_24_filled, size: 45,
                                
                                
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Qoutes",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff5451d6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FluentIcons.book_24_filled,
                                size: 45,
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Books",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff5451d6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                 FluentIcons.info_24_filled,
                                size: 45,
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "About",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: Color(0xff5451d6),
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
