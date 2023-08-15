import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Mi Perfil'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("images/myImage.jpg"),
                ),
                SizedBox(height: 10),
                Text(
                  'Steven Martinez',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Software Engineer",
                  style: TextStyle(
                    fontSize: 30,

                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                  height: 30,
                ),
                ContactCard(icon: Icons.phone, text: '+829-48934-3549843'),
                ContactCard(icon: Icons.email, text: 'steven@example.com'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 100),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 10),
            Text(text),
          ],
        ),
      ),
    );
  }
}
