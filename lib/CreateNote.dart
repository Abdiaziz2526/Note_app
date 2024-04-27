import 'package:flutter/material.dart';
import 'package:note_app/services/noteServices.dart';
class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var formKey = GlobalKey<FormState>();
  bool isSaving = false;
  var selectedDate = DateTime.now();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  NoteServices notservices = NoteServices();

void save() async {
  if (formKey.currentState!.validate()) {
    setState(() {
      isSaving = true;
    });
     notservices.save(
      context: context,
      title: titleController.text,
      date: selectedDate.toIso8601String(),
      description: descriptionController.text,
      onError: () {
        setState(() {
          isSaving = false;
        });
      },
    );
    setState(() {
      isSaving = false;
    });
  }
}
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffdbe9f6),
      appBar: AppBar(
        title: Text('Build your plan'),
        centerTitle: true,
        backgroundColor: Color(0xff5451d6),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Title:',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    children: [
                      Text(
                        'Date:',
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () async {
                          DateTime? date = await showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(4000),
                          );

                          if (date != null) {
                            setState(() {
                              selectedDate = date;
                            });
                          }
                        },
                        child: Text(
                            "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}"),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: titleController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your not title';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Enter title',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Description:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: descriptionController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your not found description';
                  }
                  return null;
                },
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Enter description',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
            }
          },
          child:  isSaving ? CircularProgressIndicator()
         : Icon(
            Icons.save,
            color: Color(0xff4530b3),
            size: 30,
          ),
          backgroundColor: Color(0xffdbe9f6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}
