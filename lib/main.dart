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


          //visulizer

          new Container(

            width: double.infinity,
            height: 125.0,
          ),

          //song title, artist name & controls
          new Column(

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
                            )

                          )

                      ]

                  )

                ),

                new Row(

                  children: <Widget>[


                  ],
                )
                  

              ],

          )



        ],    
      
      )  
   
   );
           
    
  }
}
