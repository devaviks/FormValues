import 'package:flutter/material.dart';

import 'Employee.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _Application();
}

class _Application extends State<Application> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  var _name = '';
  var _phoneNumber = '';

  List<Employee> students = [];

  void _submitForm() {
    setState(() {
      _name = nameController.text;
      _phoneNumber = mobileController.text;
      print(_name);
      print(_phoneNumber);

      students = [
        Employee(_name,_phoneNumber),
      ];
      print(students.length.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: Colors.orange),
                height: 100,
                width: MediaQuery.of(context).size.width / 3,
                child: Center(child: Text("A1")),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: Colors.redAccent),
                height: 100,
                width: MediaQuery.of(context).size.width / 3,
                child: Center(child: Text("A2")),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: Colors.green),
                height: 100,
                width: MediaQuery.of(context).size.width / 3,
                child: Center(child: Text("A3")),
              ),
            ]),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(color: Colors.blue),
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(child: Text("A4")),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(color: Colors.pink),
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(child: Text("A5")),
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Column(
              children: [
                Container(
                  child: Text("Employee Registration"),
                ),
                Row(
                  children: [
                    Container(
                      //padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width/2,
                            child: TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Name',
                              ),
                            ),
                          ),
                          //some space between name and email
                          Container(
                            padding: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width/2,
                            child: TextField(
                              controller: mobileController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Mobile',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(onPressed: _submitForm, child: Text("Submit"))
              ],
            ),
          ]),
        ));
  }
}
