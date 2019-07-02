import 'package:flutter/material.dart';
import 'package:simplemusic/bottom.dart';
import 'package:simplemusic/songs.dart';
//import 'package:simplemusic/theme.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Music',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: new AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(
                    icon: new Icon(
                    Icons.arrow_back_ios,    
          ),
          color: const Color(0xFFDDDDDD),
          onPressed: null,                
        
          ),

        title: new Text(''),
        actions: <Widget>[
          new IconButton(
                    icon: new Icon(
                    Icons.menu,    
          ),
          color: const Color(0xFFDDDDDD),
          onPressed: null,            
         ),
        ],
      ),
     
      body: new Column(

        children: <Widget>[

          //seekbar
          new Expanded(

            child: new Center(
              child: new Container(

                width: 125.0,
                height: 125.0,
                              
                child: new RadialSeekBar(
                    child: new ClipOval(
                    clipper: new CircleClipper(),
                        child: new Image.network(
                        demoPlaylist.songs[0].albumArtUrl,
                        fit: BoxFit.cover,
                    ),
                  ),
                )
              ),
            ),

          ),


          //visulizer

          new Container(

            width: double.infinity,
            height: 125.0,
          ),

          //song title, artist name & controls
          new BottomControls()

        ],    
      
      )  
   
   );
           
    
  }
}

class RadialSeekBar extends StatefulWidget {

  final double trackWidth;
  final Color trackColor;
  final double progressWidth;
  final Color progressColor;
  final double progressPercent;
  final double thumbSize;
  final Color thumbColor;
  final double thumbPosition;
 
 RadialSeekBar({

   this.trackWidth = 3.0,
    this.trackColor = Colors.grey,
    this.progressWidth = 5.0,
    this.progressColor = Colors.black,
    this.progressPercent = 0.0,
    this.thumbSize = 10.0,
    this.thumbColor = Colors.black,
    this.thumbPosition = 0.0,

 });

  @override
  _RadialSeekBarState createState() => _RadialSeekBarState();
}

class _RadialSeekBarState extends State<RadialSeekBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}