import 'dart:ui';

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

  final scrollController = ScrollController();



  // backing data
  final europeanCountries = ['esyin375: 4767', 'esyin375: 477', 'esyin375: op7', 'esyin375: op8','esyin375: op8','esyin375: op9'];

  // Override the initState() method and setup your VideoPlayerController
  @override
  void initState() {
    super.initState();
    // Pointing the video controller to our local asset.
    _controller = VideoPlayerController.network("http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",)
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

  void scrollToBottom() {
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        child: Stack(
          children: <Widget>[
       SizedBox.expand(
        child: FittedBox(
          // If your background video doesn't look right, try changing the BoxFit property.
          // BoxFit.fill created the look I was going for.
          fit: BoxFit.cover,
          child: SizedBox(
            width: _controller.value.size?.width ?? 0,
            height: _controller.value.size?.height ?? 0,
            child: VideoPlayer(_controller),
          ),
        ),
        ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
              child: Container(
                color: Colors.black.withOpacity(0.2),
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
                top: 390,
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
                top: 440,
                left: 18,
                child: Container(
                    child: Text(
                      '10 Left',
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
        top: 470,
        child: Container(
        height: 100,
        width: 120,
        color: Colors.transparent,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 0,bottom: 0),
        itemExtent: 25.0,
        itemCount: europeanCountries.length,
        controller: scrollController,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(europeanCountries[index],style: TextStyle(
                fontWeight: FontWeight.normal, fontSize: 12,color: Colors.white
            ),),
          );
        },
      ),),),
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
                                    padding: const EdgeInsets.only(top: 5,right: 195),
                                    child: Text('Related Products (6)',style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    )),
                                  ),
                                  ListTile(
                                    leading: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 44,
                                        minHeight: 44,
                                        maxWidth: 64,
                                        maxHeight: 64,
                                      ),
                                      child: Image.network("https://images.unsplash.com/photo-1597466765990-64ad1c35dafc", fit: BoxFit.cover),
                                    ),
                                    title: Text('Product Name', style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                    )),
                                    isThreeLine: true,
                                    subtitle: Text('description of product goes here...\nS10',style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 11
                                    )),
                                    trailing: RaisedButton(
                                      onPressed: () {},
                                      child: Text('Buy Now',style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12
                                      )),
                                      color: Colors.white,
                                      textColor: Colors.purpleAccent,
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(color: Colors.purpleAccent, width: 1)
                                      ),
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    ),
                                  ),
                                  ListTile(
                                    leading: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 44,
                                        minHeight: 44,
                                        maxWidth: 64,
                                        maxHeight: 64,
                                      ),
                                      child: Image.network("https://images.unsplash.com/photo-1597466765990-64ad1c35dafc", fit: BoxFit.cover),
                                    ),
                                    title: Text('Product Name', style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                    )),
                                    isThreeLine: true,
                                    subtitle: Text('description of product goes here...\nS10',style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 11
                                    )),
                                    trailing: RaisedButton(
                                      onPressed: () {},
                                      child: Text('Buy Now',style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12
                                      )),
                                      color: Colors.white,
                                      textColor: Colors.purpleAccent,
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(color: Colors.purpleAccent, width: 1)
                                      ),
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    ),
                                  ),
                                  ListTile(
                                    leading: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 44,
                                        minHeight: 44,
                                        maxWidth: 64,
                                        maxHeight: 64,
                                      ),
                                      child: Image.network("https://images.unsplash.com/photo-1597466765990-64ad1c35dafc", fit: BoxFit.cover),
                                    ),
                                    title: Text('Product Name', style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                    )),
                                    isThreeLine: true,
                                    subtitle: Text('description of product goes here...\nS10',style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 11
                                    )),
                                    trailing: RaisedButton(
                                      onPressed: () {},
                                      child: Text('Buy Now',style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12
                                      )),
                                      color: Colors.white,
                                      textColor: Colors.purpleAccent,
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(color: Colors.purpleAccent, width: 1)
                                      ),
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
