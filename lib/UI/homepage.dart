import 'package:TodoApp/UI/taskPage.dart';
import 'package:TodoApp/Widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          color: Color(0xfff6f6f6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Image(image: AssetImage("asset/images/logo.png"))),
                  Expanded(
                    child: ScrollConfiguration(
                      behavior: NoGlowBehaviour(),
                      child: ListView(
                        children: [
                          TaskCardWidget(
                            title: "First Task Title ",
                            description:
                                "This is the description of the task which is unfinished. This task has to be done quickly.",
                          ),
                          TaskCardWidget(
                            title: "Second Task Title ",
                          ),
                          TaskCardWidget(
                            title: "Third Task Title ",
                          ),
                          TaskCardWidget(
                            title: "Fourth Task Title ",
                          ),
                          TaskCardWidget(
                            title: "Fifth Task Title ",
                          ),
                          TaskCardWidget(
                            title: "Sixth Task Title ",
                          ),
                          TaskCardWidget(
                            title: "Seventh Task Title ",
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TaskPage()));
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff7349fe), Color(0xff7D49DF)]),
                          borderRadius: BorderRadius.circular(30)),
                      child:
                          Image(image: AssetImage("asset/images/add_icon.png")),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
