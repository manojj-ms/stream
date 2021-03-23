import 'package:flutter/material.dart';

class Stream extends StatefulWidget {
  @override
  _StreamState createState() => _StreamState();
}

class _StreamState extends State<Stream> {

  @override
  Widget build(BuildContext context) {
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
          mainAxisAlignment: MainAxisAlignment.start,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20,top:30),
                  child: Text(
                    'JaneSmith',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left:20),
                  child: CircleAvatar(
                    radius: 6,
                    backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
                  ),
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