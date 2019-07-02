import 'package:flutter/material.dart';


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

            child: new Container(),

          ),


          //visulizer

          new Container(

            width: double.infinity,
            height: 125.0,
          ),

          //song title, artist name & controls
          new Container(

          color: Colors.black,
          
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
              child: new Column(
                  children: <Widget>[
                    new RichText(
                      text: new TextSpan(
                          text: '',
                          children: [
                              new TextSpan(

                                text: 'Song Title\n',
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 4.0,
                                    height: 1.5,
                                ),

                              ),
                              new  TextSpan(

                                text: 'Artist name',
                                style: new TextStyle(
                                  color: Colors.white.withOpacity(0.75),
                                  fontSize: 12.0,
                                  letterSpacing: 3.0,
                                  height: 1.5,
                                )
                              )
                          ]

                      )

                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: new Row(
                        children: <Widget>[
                          new Expanded(child: new Container()),

                          new IconButton(

                            icon: new Icon(
                              
                              Icons.skip_previous,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          onPressed: (){

                            //Todo
                          },
                          ),

                           new Expanded(child: new Container()),

                           new RawMaterialButton(

                             shape: new CircleBorder(),
                             fillColor: Colors.white,
                             splashColor: Colors.pink,
                             highlightColor: Colors.red.withOpacity(0.50),
                             elevation: 10.0,
                             highlightElevation: 5.0,

                             onPressed: (){

                               //Todo
                             },
                                                                                          
                             
                           ),


                          new Expanded(child: new Container()),

                          new IconButton(

                            icon: new Icon(
                              
                              Icons.skip_next,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          onPressed: (){

                            //Todo
                          },
                          ),

                          new Expanded(child: new Container()),

                          

                        ],
                      ),
                    )
                      

                  ],

              ),
            ),
          )



        ],    
      
      )  
   
   );
           
    
  }
}
