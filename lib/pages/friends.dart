import 'package:css_colors/css_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotes_app/pages/add_friend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
class Friends extends StatefulWidget{
  @override
  FriendsState createState()=>new FriendsState();
 }
 
 class FriendsState extends State<Friends>{
//   List<Widget> _getFriends() {
//   final List<String> friends_list = <String>["Gabs","Tim","Matt","Kendall","Jimmy","Keeley","Hudson"];
//   final List<Widget>tiles=<Widget>[];
//   for (int i = 0; i < friends_list.length; i++) {
//     tiles.add(new GridTile(
//         child: new InkResponse(
//       enableFeedback: true,
//       child: new Text(friends_list[i],style: new TextStyle(fontFamily: 'Montserrat',fontSize: 40),),
//      // onTap: () => ,
//     )));
// }
// return tiles;
//   }
Widget _buildList(BuildContext context,DocumentSnapshot document)
{
  return ListTile(
    title: Row(
      children: <Widget>[
        Expanded(
          child: Text(
            document['name'],
            style: new TextStyle(fontFamily: 'Montserrat',fontSize: 40),
          ),
        ),
        
      ],
    ),
    onTap: (){print('Send quote');},
  );
}
 @override
Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StreamBuilder(
            stream: Firestore.instance.collection('friends_list').snapshots(),
            builder:(context,snapshot){
              if(!snapshot.hasData) return const Text("Loading...");
              return ListView.builder(
                itemExtent: 80.0,
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context,index)=>
                 _buildList(context, snapshot.data.documents[index]),
              );
            }
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
             Navigator.push(
                    context,
                   MaterialPageRoute(builder:(context)=>AddFriend()),
                    );
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: CSSColors.darkSalmon,
    
         
      ),
    );
  }
  }