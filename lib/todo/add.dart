import 'package:flutter/material.dart';
import 'package:taskmea_app/todo/model/todomodel.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtskill = TextEditingController();
  List<TodoModel> AllData = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'pattern');
            },
            icon: Icon(Icons.fiber_new),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: txtname,
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                ),
                controller: txtskill,
                decoration: InputDecoration(
                  labelText: "Skill",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 25,
              ),
              // InkWell(
              //   onTap: () {
              //     setState(() {
              //       TodoModel m2 = TodoModel(
              //         name: txtname.text,
              //         skill: txtskill.text,
              //       );
              //       AllData.add(m2);
              //
              //       Navigator.pushNamed(
              //         context,
              //         'TODO',
              //         arguments: AllData,
              //       );
              //     });
              //   },
              //   child: Container(
              //     height: 40,
              //     width: 90,
              //     color: Colors.indigo,
              //     child: Center(
              //       child: Text(
              //         "SUBMIT",
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 15,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    TodoModel m2 = TodoModel(
                      name: txtname.text,
                      skill: txtskill.text,
                    );
                    AllData.add(m2);
                  });
                },
                child: Text("Add"),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  TodoModel m2 = TodoModel(
                    name: txtname.text,
                    skill: txtskill.text,
                  );

                  Navigator.pushNamed(context, 'TODO', arguments: AllData);
                },
                child: Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
