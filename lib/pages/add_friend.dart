import 'package:flutter/material.dart';
import './friends.dart';
class AddFriend extends StatefulWidget{
  @override
  AddFriendState createState()=>new AddFriendState();
 
}
class AddFriendState extends State<AddFriend>{
   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:new Center(child:TextField(
        decoration: InputDecoration(
    border: InputBorder.none,
    hintText: "Enter a friend's number"
      ))),
      
    );
  }
}