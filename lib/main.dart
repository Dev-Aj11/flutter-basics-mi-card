import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Divider customDivider() {
    return Divider(
      color: Colors.blue.shade100,
      thickness: 0.8,
    );
  }

  Text personNameInfo() {
    return Text(
      "Kishore N Lalwani",
      style: TextStyle(
        fontFamily: 'SourceSansPro',
        color: Colors.blue.shade800,
        fontSize: 22,
        letterSpacing: 1,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text companyNameInfo() {
    return Text(
      "K.N. Syntex (P) Ltd.",
      style: TextStyle(
        fontFamily: 'FellEnglish',
        fontSize: 38,
        color: Colors.blue.shade800,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              companyNameInfo(),
              SizedBox(width: 150, height: 20, child: customDivider()),
              InfoBox(Icons.phone, "+91 9014417915"),
              InfoBox(Icons.email, "kn.syntex@gmail.com"),
              InfoBox(Icons.paid, '36AADCK9929N1ZR'),
              InfoBox(Icons.home,
                  'S.No.202, 2nd Floor, T-19 Tower, Ranigunj,Sec-bad - 500 003'),
              DealersBox(),
              SizedBox(height: 20),
              personNameInfo(),
              SizedBox(height: 20, width: 150, child: customDivider()),
              InfoBox(Icons.phone, "+91 9848055890"),
            ],
          ),
        ),
      ),
    );
  }
}

class DealersBox extends StatelessWidget {
  Expanded displayImage(String imageName, String type) {
    return Expanded(
      child: Image.asset(
        'images/$imageName.$type',
        height: 70,
      ),
    );
  }

  Padding distrubutorName() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Text(
        "Authorised Distributors for Telangana & A.P.",
        style: TextStyle(
          fontFamily: 'SourceSansProRegular',
          color: Colors.grey.shade900,
          fontSize: 18,
        ),
      ),
    );
  }

  Container distrubutorImages() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Row(
        children: [
          displayImage('linenClub', 'jpeg'),
          displayImage('grado', 'jpeg'),
          displayImage('cavallo', 'png'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double spacing = width / 12;
    return Card(
      margin: EdgeInsets.symmetric(horizontal: spacing, vertical: 10),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade600, width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          distrubutorName(),
          distrubutorImages(),
        ],
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
      // Edit border radius & color
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade600, width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: spacing, vertical: 10),
      child: ListTile(
        leading: Icon(displayIcon, color: Colors.grey.shade900),
        title: Text(
          displayText,
          style: TextStyle(
            color: Colors.grey.shade900,
            fontFamily: "SourceSansProRegular",
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
