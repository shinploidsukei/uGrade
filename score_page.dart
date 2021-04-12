import 'package:flutter/material.dart';
import './gpapage.dart';
class ScorePage extends StatelessWidget{

  final double score;
  ScorePage(this.score);
  @override
  Widget build(BuildContext context){
    return new Material(
        color: Colors.white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Your GPA is: ",style: new TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 50.0)),
            new Text(score.toStringAsFixed(score.truncateToDouble() == score ? 0 : 2),style: new TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 50.0)),
            new IconButton(
              icon: new Icon(Icons.arrow_right),
              color: Colors.lightBlueAccent,
              iconSize: 50.0,
              onPressed: ()=>Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder:(BuildContext context)=>new GPA()), (Route route)=>route==null),
            )
          ],
        )
    );
  }
}