import 'package:flutter/material.dart';
import '../pages/friends.dart';
class QuotesPage extends StatefulWidget{
  final List<String> content;
  
  QuotesPage({
     Key key,
    @required this.content,
  }) : super(key: key);
  @override
  QuotesPageState createState()=>QuotesPageState();

}
class QuotesPageState extends State<QuotesPage>{
  List<Widget> _getTiles() {
  final List<Widget> tiles = <Widget>[];
  for (int i = 0; i < widget.content.length; i++) {
    tiles.add(new GridTile(
        child: new InkResponse(
      enableFeedback: true,
      child: new Text(widget.content[i],style:new TextStyle(fontFamily: 'Montserrat',fontSize: 20) ,),
      onTap: () =>  Navigator.push(
                    context,
                   MaterialPageRoute(builder:(context)=>Friends()),
                    ),
    )));
  }
  return tiles;
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: new Container(
           margin: EdgeInsets.all(2),
          child: GridView.count(
            crossAxisCount:1,children:_getTiles(),
            padding: EdgeInsets.zero,
            childAspectRatio: (3),
          )
        ),
      ),
    );
  }
}