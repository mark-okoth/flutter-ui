import "package:flutter/material.dart";

class MyProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyProfileState();
  }
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          elevation: 10,
          child: Column(
            children: <Widget>[
              Text("card heading"),
              Icon(Icons.people),
            ],
          )),
    );
  }
}
