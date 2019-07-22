import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:quotes_app/auth.dart';
import 'package:quotes_app/pages/categories.dart';
class LandingPage extends StatefulWidget{
  @override
  LandingPageState createState()=>new LandingPageState();
 
}
class LandingPageState extends State<LandingPage>{
   @override
  Widget build(BuildContext context) {
    
      return new Scaffold(
        backgroundColor: Colors.lightGreen,
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            new Text(
              "Quotable",style: TextStyle(fontSize: 50.0,fontFamily: 'Montserrat'),
            ),
            GoogleSignInButton(
              onPressed: () {
                authService.googleSignIn();
                Navigator.push(
                    context,
                   MaterialPageRoute(builder:(context)=>Categories()),
                    );
              
              }
                  
               
              ),
          ],),
        ),
      ),
    );
    
  } 
}
class UserProfile extends StatefulWidget{
  @override
  UserProfileState createState()=>UserProfileState();
}
class UserProfileState extends State<UserProfile>
{
  Map<String,dynamic> _profile;
  bool _loading=false;
  @override 
  void initState() {
    super.initState();
    authService.profile.listen((state)=>setState(()=>_profile=state));

    authService.loading.listen((state)=>setState(()=>_loading=state));
    
  }
  @override 
  Widget build(BuildContext context) {
      return Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Text(_profile.toString()),
        ),
        Text(_loading.toString())
      ]) ;
    }
  // class LoginButton extends StatelessWidget{
  //   @override
  //   Widget build(BuildContext context) {
  //     return StreamBuilder(
  //       stream: aut,
  //     );
  //   }
  // }
}