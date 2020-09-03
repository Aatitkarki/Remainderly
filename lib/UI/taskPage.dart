import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image(
                              image: AssetImage(
                                  "asset/images/back_arrow_icon.png")),
                        )),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter the task title",
                            border: InputBorder.none),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter the description of the task...",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20)),
                  ),
                ),
                TodoWidget(
                  isDone: false,
                  text: "To do project",
                ),
                TodoWidget(
                  isDone: true,
                  text: "Second ToDo",
                ),
                TodoWidget(
                  isDone: false,
                  text: "To do project",
                ),
              ],
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffFF150C),
                      borderRadius: BorderRadius.circular(30)),
                  child:
                      Image(image: AssetImage("asset/images/delete_icon.png")),
                ))
          ],
        ),
      ),
    ));
  }
}
