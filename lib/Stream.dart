import 'package:flutter/material.dart';

class Stream extends StatefulWidget {
  @override
  _StreamState createState() => _StreamState();
}

class _StreamState extends State<Stream> {

  @override
  Widget build(BuildContext context) {
    const IconData power_settings_new = IconData(0xe949, fontFamily: 'MaterialIcons');
    return Scaffold(
      body : Container(
        padding: EdgeInsets.all(15),
        /* bg image */
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("http://via.placeholder.com"),
            fit: BoxFit.cover,
          ),
        ),
        /* first row */
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /* first column */
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only( top:30),
                ),
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
            )],
            ),

            /* second column with crossaxis */

            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top:30,right: 35),
                  child: Text(
                    'JaneSmith',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),

            /* third column with crossaxis */
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 90.0,
                    margin: new EdgeInsets.symmetric(vertical: 30),
                  child: OutlinedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text("Switch Product",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: Colors.blue
                      ),),
                  )
                ),
              ],
            ),

            /* fourth column with crossaxis */
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 55.0,
                    margin: new EdgeInsets.symmetric(vertical: 30),
                    child: OutlinedButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Row( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(power_settings_new,size: 14),
                          Text("END",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                                color: Colors.blue
                            ),),
                        ],
                      ),
                    )
                ),
              ],
            ),

          ],
        ),






      ),
    );
  }

}


Widget titleSection = Container(
  padding: const EdgeInsets.all(2),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'JaneSmith',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);