import 'package:flutter/material.dart';
import 'package:note_app/qoutes/Walt%20Disney.dart';
import 'package:note_app/qoutes/nelson.dart';

class QuoteNotes extends StatefulWidget {
  const QuoteNotes({super.key});

  @override
  State<QuoteNotes> createState() => _QuoteNotesState();
}

class _QuoteNotesState extends State<QuoteNotes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
        Navigator.pop(context);
      },
    ),
       
        title: Text('Qoutes For life'),
        centerTitle: true,
        backgroundColor: Color(0xff5451d6),
        elevation: 0, 
       
      ),
      
        backgroundColor: Color(0xffdbe9f6),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 175),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
              Text("You can read", style: TextStyle(
                fontSize: 24, color: Color(0xff5451d6),
                fontWeight: FontWeight.w600
              ),),
              Text("any qoutes you need to", style: TextStyle(
                fontSize: 20, color: Color(0xff5451d6)
              ),
              ),
              
              ],),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                   Column(
                     children: [
                       Container(
                        height: 320, width: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.2
                            ),
                          ]
                        ),
                         child: Column(
                           children: [
                            SizedBox(height: 10,),
                             Container(
                              height: 220, width: 190,
                              decoration: BoxDecoration(
                              color: Colors.blue,
                              boxShadow: [
                                BoxShadow(
                                  //spreadRadius: 1
                                  blurRadius: 1
                                ),
                       
                              ],
                              image: DecorationImage(image: AssetImage("assets/two.jpg"), fit: BoxFit.cover)
                              ),
                              
                              ),
                              SizedBox(height: 7,),
                              Text("Nelson Mandela", style: TextStyle(fontSize: 19),),
                              SizedBox(height: 4,),
                              Container(
                                width: 200, height: 40,
                                child: ElevatedButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>nelsonMan()));

                                },
                                style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xff5451d6),
                                ),
                                 child: Text("Read",
                                 style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w400
                                 ),
                                 )),
                              )
                           ],
                         ),
                       ),
                     ],
                   ),
                   SizedBox(width: 17,),
                   Column(
                     children: [
                       Container(
                        height: 320, width: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.2
                            ),
                          ]
                        ),
                         child: Column(
                           children: [
                            SizedBox(height: 10,),
                             Container(
                              height: 220, width: 190,
                              decoration: BoxDecoration(
                              color: Colors.blue,
                              boxShadow: [
                                BoxShadow(
                                  //spreadRadius: 1
                                  blurRadius: 1
                                ),
                       
                              ],
                              image: DecorationImage(image: AssetImage("assets/three.jpg"), fit: BoxFit.cover)
                              ),
                              
                              ),
                              SizedBox(height: 7,),
                              Text("Walt Disney", style: TextStyle(fontSize: 19),),
                              SizedBox(height: 4,),
                              Container(
                                width: 200, height: 40,
                                child: ElevatedButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>waltQout()));
                                },
                                style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xff5451d6),
                                ),
                                 child: Text("Read",
                                 style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w400
                                 ),
                                 )),
                              )
                           ],
                         ),
                       ),
                     ],
                   ),
                    SizedBox(width: 17,),
                   Column(
                     children: [
                       Container(
                        height: 320, width: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.2
                            ),
                          ]
                        ),
                         child: Column(
                           children: [
                            SizedBox(height: 10,),
                             Container(
                              height: 220, width: 190,
                              decoration: BoxDecoration(
                              color: Colors.blue,
                              boxShadow: [
                                BoxShadow(
                                  //spreadRadius: 1
                                  blurRadius: 1
                                ),
                       
                              ],
                              image: DecorationImage(image: AssetImage("assets/four.jpg"), fit: BoxFit.cover)
                              ),
                              
                              ),
                              SizedBox(height: 7,),
                              Text("Nelson Mandela", style: TextStyle(fontSize: 19),),
                              SizedBox(height: 4,),
                              Container(
                                width: 200, height: 40,
                                child: ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xff5451d6),
                                ),
                                 child: Text("Read",
                                 style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w400
                                 ),
                                 )),
                              )
                           ],
                         ),
                       ),
                     ],
                   ),
                          
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                   Column(
                     children: [
                       Container(
                        height: 320, width: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.2
                            ),
                          ]
                        ),
                         child: Column(
                           children: [
                            SizedBox(height: 10,),
                             Container(
                              height: 220, width: 190,
                              decoration: BoxDecoration(
                              color: Colors.blue,
                              boxShadow: [
                                BoxShadow(
                                  //spreadRadius: 1
                                  blurRadius: 1
                                ),
                       
                              ],
                              image: DecorationImage(image: AssetImage("assets/four.jpg"), fit: BoxFit.cover)
                              ),
                              
                              ),
                              SizedBox(height: 7,),
                              Text("Nelson Mandela", style: TextStyle(fontSize: 19),),
                              SizedBox(height: 4,),
                              Container(
                                width: 200, height: 40,
                                child: ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xff5451d6),
                                ),
                                 child: Text("Read",
                                 style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w400
                                 ),
                                 )),
                              )
                           ],
                         ),
                       ),
                     ],
                   ),
                   SizedBox(width: 17,),
                   Column(
                     children: [
                       Container(
                        height: 320, width: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.2
                            ),
                          ]
                        ),
                         child: Column(
                           children: [
                            SizedBox(height: 10,),
                             Container(
                              height: 220, width: 190,
                              decoration: BoxDecoration(
                              color: Colors.blue,
                              boxShadow: [
                                BoxShadow(
                                  //spreadRadius: 1
                                  blurRadius: 1
                                ),
                       
                              ],
                              image: DecorationImage(image: AssetImage("assets/two.jpg"), fit: BoxFit.cover)
                              ),
                              
                              ),
                              SizedBox(height: 7,),
                              Text("Nelson Mandela", style: TextStyle(fontSize: 19),),
                              SizedBox(height: 4,),
                              Container(
                                width: 200, height: 40,
                                child: ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xff5451d6),
                                ),
                                 child: Text("Read",
                                 style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w400
                                 ),
                                 )),
                              )
                           ],
                         ),
                       ),
                     ],
                   ),
                    SizedBox(width: 17,),
                   Column(
                     children: [
                       Container(
                        height: 320, width: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.2
                            ),
                          ]
                        ),
                         child: Column(
                           children: [
                            SizedBox(height: 10,),
                             Container(
                              height: 220, width: 190,
                              decoration: BoxDecoration(
                              color: Colors.blue,
                              boxShadow: [
                                BoxShadow(
                                  //spreadRadius: 1
                                  blurRadius: 1
                                ),
                       
                              ],
                              image: DecorationImage(image: AssetImage("assets/two.jpg"), fit: BoxFit.cover)
                              ),
                              
                              ),
                              SizedBox(height: 7,),
                              Text("Nelson Mandela", style: TextStyle(fontSize: 19),),
                              SizedBox(height: 4,),
                              Container(
                                width: 200, height: 40,
                                child: ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xff5451d6),
                                ),
                                 child: Text("Read",
                                 style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w400
                                 ),
                                 )),
                              )
                           ],
                         ),
                       ),
                     ],
                   ),
                          
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}