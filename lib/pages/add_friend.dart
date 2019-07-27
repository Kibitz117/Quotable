import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'friends.dart';
class AddFriend extends StatefulWidget{
  @override
  AddFriendState createState()=>new AddFriendState();
 
}
String value="";
class AddFriendState extends State<AddFriend>{
  final DocumentReference doc=Firestore.instance.collection('friends_list').document();
   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: new RaisedButton(
        child:Text("Add"),
        onPressed: (){
          addFriend(value);
        },
      ),
      body:new Center(child:TextField(
        onChanged: (text){
          value=text;
        },
        keyboardType: TextInputType.multiline,
        maxLines: 2,
        decoration: InputDecoration(
    border: InputBorder.none,
    hintText: "Enter a friend's name",
      ))),
      
    );
  }
  void addFriend(String name){
   Map<String,String> friend=<String,String>{
     'name':name,
     'email':'vbarcelon@gmail.com'
   };
   doc.setData(friend).whenComplete((){
     Navigator.push(context, MaterialPageRoute(builder:(context)=>Friends()));
   }).catchError((e)=>print(e));

}

}
