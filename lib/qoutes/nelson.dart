import 'package:flutter/material.dart';

class nelsonMan extends StatelessWidget {
  const nelsonMan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xff5451d6),
        elevation: 0,
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
        Navigator.pop(context);
      },
    ),
        ),
       backgroundColor: Color(0xffdbe9f6),
       body: Column(
                     children: [
                      SizedBox(height: 30,),
                       Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 370, width: 320,
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
                              height: 280, width: 280,
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
                             
                              
                             
                           ],
                         ),
                       ),
                       SizedBox(height: 9,),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: Text("Nelson Mandela", style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w500
                         ),),
                       ),
                        SizedBox(height: 7,),
                       Padding(
                         padding: const EdgeInsets.only(left: 45),
                         child: Text("Education is the most powerful weapon which you can use to change the world.", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400, 
                         ),),
                       ),
                       SizedBox(height: 7,),
                       Padding(
                         padding: const EdgeInsets.only(left: 45),
                         child: Text("Education is the most powerful weapon which you can use to change the world.", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400, 
                         ),),
                       ),
                       SizedBox(height: 7,),
                       Padding(
                         padding: const EdgeInsets.only(left: 45),
                         child: Text("Education is the most powerful weapon which you can use to change the world.", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400, 
                         ),),
                       ),
                       

                     ],
                   ),
      ),
    );
  }
}