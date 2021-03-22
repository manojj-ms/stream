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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("http://via.placeholder.com"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
            )
             ],
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}

