import 'dart:ui';

import 'package:flutter/material.dart';
import 'about.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            //Header
            new UserAccountsDrawerHeader(
              accountName: Text("Jennifer Lyn"),
              accountEmail: Text("jennylyn@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.blue,
              ),
            ),

            //body

            InkWell(
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                onTap: () {},
              ),
            ),

            Divider(),

            InkWell(
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                ),
                onTap: () {},
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                ),
                onTap: () {},
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Log out"),
                leading: Icon(
                  Icons.exit_to_app,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Welcome',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 65.0,
              backgroundImage: NetworkImage(
                  'https://lahaciendawa.com/wp-content/uploads/2020/07/cara6-620x618-1.jpg'),
            ),
            SizedBox(
              height: 24,
            ),
            Text('NAME: Jennifer Lyn',
                style: TextStyle(
                  fontSize: 20,
                )),
            Text('ID: 33233',
                style: TextStyle(
                  fontSize: 20,
                )),
            Text('DEPARTMENT: ISC',
                style: TextStyle(
                  fontSize: 20,
                )),
            Text('COURSE: Computer Science',
                style: TextStyle(
                  fontSize: 20,
                )),
            SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              child: Container(
                child: Text('Read more about me...',
                    style: TextStyle(fontSize: 20, color: Colors.blue)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
