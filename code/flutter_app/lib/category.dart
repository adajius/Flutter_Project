
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:meta/meta.dart';

var rowThree = Container(
  padding: EdgeInsets.all(10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(Icons.thumb_up, color: Colors.green),
      Icon(Icons.comment, color: Colors.green),
      Icon(Icons.share, color: Colors.green),
    ],
  ),
);

var rowOne = Container(
  padding: EdgeInsets.all(10.0),
  //height: 300.0,
  child: Row(
    //mainAxisAlignment: MainAxisAlignment,
    children: [
      Image.asset('images/ify.jpg', scale: 2.0, ),
      Padding(
          padding: EdgeInsets.only(left: 30.0),
      child: Text(
        'Username goes here',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20.0,
          color: Colors.black87,
        ),
      ),
      ),
    ],
  ),
);

class Category extends StatelessWidget {
  final String name;
  //final ColorSwatch color;
  final IconData iconLocation;
  final IconData iconLocationn;

  const Category({
    Key key,
    @required this.name,
    //@required this.color,
    @required this.iconLocation,
    @required this.iconLocationn,
  })  : assert(name != null),
        //assert(color != null),
        assert(iconLocation != null),
        assert(iconLocationn != null),
        super(key: key);

  @override

  Widget build(BuildContext context) {

    var rowTwo = Container(
      height: 120.0,
      child: InkWell(
          borderRadius: BorderRadius.zero,
          highlightColor: Colors.blue,
          //splashColor: Colors.blue,
          onTap: () {
            print('I was tapped!');
          },
          child: Row(
            children: <Widget>[
              Icon(Icons.play_circle_filled, size: 60.0, color: Colors.green),
              //new MaterialButton(,
              new Expanded(
                child: Padding(padding: EdgeInsets.only(left: 10.0),
                child: MaterialButton(
                    textColor: Colors.black87,

                  child: Text('Music description goes here. Talk about the music you created. '
                      'Click on play icon to play music. Click on respective icons to like, comment or share.',
                    textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Roboto',fontSize: 20.0,),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  },

                ),
                ), //),
              ),
            ],
          )),
    );


    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 40.0),
        //height: 300.0,
        child: Column(
          children: <Widget>[
            rowOne,
            rowTwo,
            rowThree,
          ],

        ),
      ),
    );
  }
}


class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Description and details"),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.play_circle_filled, size: 80.0, color: Colors.green),
            Padding(padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0,30.0 ), child: Text('Music description goes here. Talk about the music you created. Click on play icon to play music. Click on respective icons to like, comment or share.',
              textAlign: TextAlign.justify, style: TextStyle(fontFamily: 'Roboto',fontSize: 20.0,),),),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.thumb_up, color: Colors.green),
            Icon(Icons.comment, color: Colors.green),
            Icon(Icons.share, color: Colors.green),
          ],
        ),
            Row(
             // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/ify.jpg', scale: 2.0, ),
                Expanded(
                  child: Text('Reviews go here. Hey lovely music!!. ',
                  textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Roboto',fontSize: 20.0,),),),],),
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/ify.jpg', scale: 2.0, ),
                Expanded(
                  child: Text('Someother review. Hey lovely music!!. ',
                    textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Roboto',fontSize: 20.0,),),),],),
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/ify.jpg', scale: 2.0, ),
                Expanded(
                  child: Text('And some more. Hey lovely music!!. ',
                    textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Roboto',fontSize: 20.0,),),),],),],
         ),
      ),
    );
  }
}
