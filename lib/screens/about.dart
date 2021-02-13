import 'package:flutter/material.dart';
import 'MyHome.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Me',
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
            Text('About Me',
                style: TextStyle(fontSize: 20, color: Colors.blue)),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHome()));
              },
              child: Container(
                child: Text('Thank you',
                    style: TextStyle(fontSize: 20, color: Colors.blue)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
