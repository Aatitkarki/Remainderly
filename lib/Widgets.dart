import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String description;

  TaskCardWidget({this.title, this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            description ?? "(No description has been added to this task)",
            style: TextStyle(
                fontSize: 18, height: 1.5, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  final bool isDone;
  final String text;

  const TodoWidget({@required this.isDone, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
              height: 20,
              width: 20,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: isDone ? Color(0xff7349fe) : Colors.transparent,
                  border: Border.all(
                      width: 1.5,
                      color: isDone ? Colors.transparent : Color(0xff86829d)),
                  borderRadius: BorderRadius.circular(5)),
              child: Image(image: AssetImage("asset/images/check_icon.png"))),
          Text(text,
              style: TextStyle(
                  color: isDone ? Color(0xff2F2F2F) : Color(0xff7f8c8d),
                  fontSize: 16,
                  fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}

class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
