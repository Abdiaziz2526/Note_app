import 'package:flutter/material.dart';
import 'package:note_app/CreateNote.dart';

import 'package:note_app/models/notemodel.dart';


class CreatNote extends StatefulWidget {
  const CreatNote({super.key});

  @override
  State<CreatNote> createState() => _CreatNoteState();
}

class _CreatNoteState extends State<CreatNote> {
  List<Notes> notelist = [];

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffdbe9f6),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 50,),
             Padding(
               padding: const EdgeInsets.all(15),
               child: TextField(
                decoration: InputDecoration(
                  filled: true, 
                  fillColor: Color(0xFFdbe9f6), 
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.grey), 
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder( 
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black), 
                  ),
                ),
               ),
             ),
              SizedBox(height: 20,),
             Expanded(
        child: ListView.builder(
          itemCount: notelist.length, 
          itemBuilder: (BuildContext context, int index) {
            var note = notelist[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white
              
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(note.title, 
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20
                        ),),
                        SizedBox(width: 10),
                        Text('date: ${note.date}', style: TextStyle(
                          fontSize: 17
                        ),)
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(note.description, style: TextStyle(
                      color: Colors.grey, fontSize: 15
                    ),),
                    Divider(), // Add a divider to separate items
                  ],
                ),
              ),
            );
          },
        ),
             )
            ],
          ),
        ),
        floatingActionButton: Container(
          height: 65, width: 65,
          child: FloatingActionButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyForm()));
          }, child: Icon(Icons.add, color: Color(0xff4530b3),size: 30,),backgroundColor: Color(0xffdbe9f6),shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(7) 
          ),
          ),
        ),
      ),
    );
  }
}