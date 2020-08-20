import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: FirstPage());
  }
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:AppBar(title: Text('FlashCard'),) ,
            floatingActionButton : FloatingActionButton(
      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Addcard()),
  );},
      child: Icon(Icons.add),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
      mini: true,
    ));
  }
}

class Addcard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
    body: 
         Column(children: [ 
         Container(child: TextFormField(initialValue: 'Enter Text', ),padding: EdgeInsets.fromLTRB(10, 100, 10, 20) ,),
         RaisedButton(onPressed: (){Navigator.pop(context);},
         child:Text('Go Back'),
         textColor: Colors.white,
         color:  Color(0xFF1979a9),
         )
         ])
         ,
  );
  }
}