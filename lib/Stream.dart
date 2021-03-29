import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class Stream extends StatefulWidget {
  String text = 'Related Products (6)';

  @override
  _StreamState createState() => _StreamState();
}

class _StreamState extends State<Stream> {
  static const IconData shopping_bag_outlined = IconData(0xe415, fontFamily: 'MaterialIcons');
  static const IconData volume_off = IconData(0xead0, fontFamily: 'MaterialIcons');
  static const IconData remove_red_eye = IconData(0xe974, fontFamily: 'MaterialIcons');
  static const IconData flip_camera_ios_rounded = IconData(0xf201, fontFamily: 'MaterialIcons');
  static const IconData filter_alt_outlined = IconData(0xe1b6, fontFamily: 'MaterialIcons');
  static const IconData power_settings_new = IconData(0xe949, fontFamily: 'MaterialIcons');
  VideoPlayerController _controller;

  // Override the initState() method and setup your VideoPlayerController
  @override
  void initState() {
    super.initState();
    // Pointing the video controller to our local asset.
    _controller = VideoPlayerController.network("",)
      ..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: new BoxDecoration(
            color: new Color.fromRGBO(0,0,0,0.6) // Specifies the background color and the opacity
        ),

        child: Stack(
          children: <Widget>[
        SizedBox.expand(
        child: FittedBox(
          // If your background video doesn't look right, try changing the BoxFit property.
          // BoxFit.fill created the look I was going for.
          fit: BoxFit.fill,
          child: SizedBox(
            width: _controller.value.size?.width ?? 0,
            height: _controller.value.size?.height ?? 0,
            child: VideoPlayer(_controller),
          ),
        ),
        ),
            Positioned(
              top: 30,
              left: 15,
            child: Container(
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",),
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
              left: 180,
              width: 85,
              child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text('Switch Product', style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 10,color: Colors.purpleAccent
                    ),),
                  )
              ),
            ),
            Positioned(
              top: 35,
              left: 272,
              width: 69,
              child: Container(
                  child :ElevatedButton.icon(
                    onPressed: () {
                      // Respond to button press
                    },
                    icon: Icon(Icons.power_settings_new,color: Colors.redAccent, size: 13),
                    label: Text("END",style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 10,color: Colors.purpleAccent
                    ),),
                  )
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
                      'Good Product!',
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
                      'Good Product!',
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
                      'Good Product!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13
                      ),)
                )
            ),
            Positioned(
                top: 592,
                left: 5,
                child: Container(
                  child: new IconButton(
                    icon: Icon(Icons.shopping_bag_outlined,size: 20),
                      onPressed: () {
                        // ignore: missing_return
                        showModalBottomSheet<void>( shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0)
                          ),
                        ),context: context,   backgroundColor: Colors.white, builder: (BuildContext context) {
                          return Container(
                            height: 450,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:<Widget>[
                                ButtonTheme(
                                minWidth: 60.0,
                                height: 13.0,
                                buttonColor: Colors.grey,
                                child: RaisedButton(
                                  onPressed: () {},
                                ),
                              ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,right: 185),
                                    child: Text('Related Products (6)',style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 20,right: 265),
                                    child: Image.network(
                                      'https://via.placeholder.com/150',
                                      height: 70,
                                      width: 95,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 20,right: 265),
                                    child: Image.network(
                                      'https://via.placeholder.com/150',
                                      height: 70,
                                      width: 95,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 20,right: 265),
                                    child: Image.network(
                                      'https://via.placeholder.com/150',
                                      height: 70,
                                      width: 95,
                                    ),
                                  ),
                                ],
                              ),
                          );
                        },
                        );
                      }), //
                  ),
                ),
            Positioned(
                top: 590,
                left: 50,
                child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 205,
                          height: 40,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2.0),
                            ),
                            hintText: 'Say Something. . .',
                          ),),
                        ),
                      ],
                    )
                )
            ),

            Positioned(
                top: 600,
                left: 278,
                child: Container(
                  child: Icon(
                    Icons.flip_camera_ios_rounded,
                    size: 20,
                  ),
                )
            ),
            Positioned(
                top: 600,
                left: 318,
                child: Container(
                  child: Icon(
                    Icons.filter_alt_outlined,
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
