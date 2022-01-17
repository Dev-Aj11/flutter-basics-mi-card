import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/rich.png'),
              ),
              Text(
                "Arjun Lalwani",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "PRODUCT MANAGER",
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 14,
                  letterSpacing: 6,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150,
                height: 20,
                child: Divider(
                  color: Colors.teal.shade100,
                  thickness: 0.8,
                ),
              ),
              InfoBox(Icons.phone, "+1 484-365-3197"),
              InfoBox(Icons.email, "arjun11@cs.uw.edu"),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  InfoBox(this.displayIcon, this.displayText);

  final IconData displayIcon;
  final String displayText;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double spacing = width / 12;
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: spacing, vertical: 10),
      child: ListTile(
        leading: Icon(
          displayIcon,
          color: Colors.teal,
        ),
        title: Text(
          displayText,
          style: TextStyle(
            color: Colors.teal.shade900,
            fontFamily: "SourceSansPro",
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
