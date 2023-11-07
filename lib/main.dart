import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: CharacterCard(),
  ));

class CharacterCard extends StatefulWidget {
  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {

  int charLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 3, 3),
      appBar: AppBar(
        title: Text("User Profile"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            charLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
                radius: 45,
              ),
            ),
            Divider(
              height: 70,
            ),

            Text(
              'Name:',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.5,
                fontSize: 15
              ),
            ),
              SizedBox(height: 10),
              Text(
              'Kenz',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.5,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
              SizedBox(height: 30),

            Text(
              'Current Level:',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.5,
                fontSize: 15
              ),
            ),
              SizedBox(height: 10),
              Text(
              '$charLevel',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.5,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                  ),
                  SizedBox(width: 12),
                  Text(
                    "kenz@binus.ac.id",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      letterSpacing: 2.5,
                    ),
                  ),
                ],
              )            
          ],
        ),
      ),
    );
  }
}

