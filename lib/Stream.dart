import 'package:flutter/material.dart';

class Stream extends StatefulWidget {
  @override
  _StreamState createState() => _StreamState();
}

class _StreamState extends State<Stream> {
  static const IconData shopping_bag_outlined = IconData(0xe415, fontFamily: 'MaterialIcons');
  static const IconData volume_off = IconData(0xead0, fontFamily: 'MaterialIcons');
  static const IconData remove_red_eye = IconData(0xe974, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /* bg image */
        height: 850,
        width: 600,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("http://via.placeholder.com/300"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: 15,
            child: Container(
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
                )
              )
            ),
            Positioned(
                top: 35,
                left: 60,
                child: Container(
                    child: Text(
                      'JaneSmith',
                      style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 12
                      ),)
                ),
            ),
            Positioned(
              top: 52,
              left: 60,
              child: Container(
                child: Icon(remove_red_eye,size: 13.0),
              ),
            ),
            Positioned(
              top: 50,
              left: 76,
              child: Container(
                  child: Text(
                    '4500',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 10
                    ),)
              ),
            ),
            Positioned(
              top: 50,
              left: 102,
              child: Container(
                  child: Text(
                    'viewers',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 10
                    ),)
              ),
            ),
            Positioned(
              top: 35,
              left: 200,
              width: 90,
              child: Container(
                  child: RaisedButton(
                    child: Text(" Switch Product ",   style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 10, color: Colors.black,
                    )),
                  ),
              ),
            ),
            Positioned(
              top: 35,
              left: 300,
              width: 50,
              child: Container(
                child: RaisedButton(
                  child: Text(" END ",   style: TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 10, color: Colors.black
                  )),
                  color: Color(0xffe5dddd),
                ),
              ),
            ),
            Positioned(
                top: 345,
                left: 15,
                child: Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage('https://images.unsplash.com/photo-1597466765990-64ad1c35dafc')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                )
            ),
            Positioned(
                top: 392,
                left: 18,
                child: Container(
                    child: Text(
                      '10 Left',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 13
                      ),)
                )
            ),
            Positioned(
                top: 435,
                left: 18,
                child: Container(
                    child: CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
                    )
                )
            ),
            Positioned(
                top: 435,
                left: 55,
                child: Container(
                    child: Text(
                      'John Williams',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12
                      ),)
                )
            ),
            Positioned(
                top: 450,
                left: 55,
                child: Container(
                    child: Text(
                      'Good Product',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13
                      ),)
                )
            ),
            Positioned(
                top: 540,
                left: 315,
                child: Container(
                  child: Container(
                    child: Icon(volume_off),
                  ),
                )
            ),
            Positioned(
                top: 485,
                left: 18,
                child: Container(
                    child: CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
                    )
                )
            ),
            Positioned(
                top: 485,
                left: 55,
                child: Container(
                    child: Text(
                      'John Williams',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12
                      ),)
                )
            ),
            Positioned(
                top: 500,
                left: 55,
                child: Container(
                    child: Text(
                      'Good Product',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13
                      ),)
                )
            ),
            Positioned(
                top: 535,
                left: 18,
                child: Container(
                    child: CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
                    )
                )
            ),
            Positioned(
                top: 535,
                left: 55,
                child: Container(
                    child: Text(
                      'John Williams',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12
                      ),)
                )
            ),
            Positioned(
                top: 550,
                left: 55,
                child: Container(
                    child: Text(
                      'Good Product',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13
                      ),)
                )
            ),
            Positioned(
                top: 600,
                left: 18,
                child: Container(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 20,
                  ),
                )
            ),
            /*Positioned(
                top: 600,
                left: 68,
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Say Something',
                    ),
                  ),
                )
            ),*/
            Positioned(
                top: 600,
                left: 278,
                child: Container(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 20,
                  ),
                )
            ),
            Positioned(
                top: 600,
                left: 318,
                child: Container(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 20,
                  ),
                )
            ),


          ],
        ),
      ),
    );
  }
}
