import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
         
          title: Text('TikTok'),
          backgroundColor: Colors.purpleAccent,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: <Color>[
                      Colors.deepPurple, 
                      Colors.blueAccent,
                      Colors.orangeAccent,
                    
                    ],
                  )),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          child: Padding(padding: EdgeInsets.all(8.0),
                          child: Image.asset('images/man.png', width: 80, height: 80,),
                          )
                        ),
                        Padding(padding: EdgeInsets.all(8.0),
                        child: Text('My Profile', style: TextStyle(color:Colors.white, fontSize: 20.0) ,),
                        )
                      ],
                    ),
                  ),),
                  
              CustomListTile(Icons.person, 'About Me', () {}),
              CustomListTile(
                  Icons.notification_important, 'Notification', () {}),
              CustomListTile(Icons.settings, 'Settings', () {}),
              CustomListTile(Icons.satellite, 'Log Out', () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.purple.shade100) )
        ),
          child: InkWell(
        onTap: onTap,
        splashColor: Colors.deepOrangeAccent,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon, color: Colors.purple),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text, 
                      style: TextStyle(fontSize: 16.0,),
                    ),
                  )
                ],
              ),
              Icon(Icons.arrow_right, color: Colors.orangeAccent,)
            ],
          ),
        ),
      )),
    );
  }
}
