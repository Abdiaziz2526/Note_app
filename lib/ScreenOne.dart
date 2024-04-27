import 'package:flutter/material.dart';
import 'package:note_app/Hompage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffdbe9f6),
        body: Column(
          children: [
            // Container(
            //   height: 100, width: 100,
            //   decoration: BoxDecoration(
            //     color: Colors.blue
            //   ),
            // )
            Image.asset("assets/on-01.png",
            ),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text("Manage your", style: TextStyle(
                    fontSize: 36, fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text("daily tasks", style: TextStyle(
                    fontSize: 31, fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(" is simply dummy text of the  printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into",
                  style: TextStyle(
                    fontSize: 16
                  ),
                  ),
                ),
                SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 50,width: 150,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                    }, 
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0xfff0f5f8)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text("Get Start",
                      style: TextStyle(
                        fontSize: 19, color: Colors.black
                      ),
                      ),
                    ),
                    ),
                  ),
                )
              ],
            )
            )
          ],
        ),

      ),
    );
  }
}