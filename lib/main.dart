import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Ninja ID Card'),
       centerTitle: true,
     ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/yeswecode.jpeg'),
                radius: 40,
              ),
            ),
            Divider(height: 100, color: Colors.blue,),
            Text('NAME:', style: TextStyle(
              color: Colors.grey[500]
            ),),
            SizedBox(
              height: 5,
            ),
            Text('Nicole Sattler', style: TextStyle(
              color: Colors.blue,
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 25,
            ),
            Text('CURRENT NINJA LEVEL:', style: TextStyle(
                color: Colors.grey[500]
            ),),
            SizedBox(
              height: 5,
            ),
            Text('$ninjaLevel', style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[500],
                ),
                SizedBox(width: 5,),
                Text('myemail@example.com', style: TextStyle(
                  color: Colors.grey[500],
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
