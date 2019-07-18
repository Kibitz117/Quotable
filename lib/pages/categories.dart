import 'package:css_colors/css_colors.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/pages/friends.dart';
import '../templates/quotes_page.dart';
import 'package:quotes_app/auth.dart';
import './landing_page.dart';
class Categories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Scaffold(
        appBar: AppBar(title:  new Text(
              "Quotable",style: TextStyle(fontSize: 50.0,fontFamily: 'Montserrat'),
            ),),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                title: Text('Friends'),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Friends()));
                }
              ),
              ListTile(
                title:Text('Sign Out'),
                onTap: (){
                   authService.signOut();
                Navigator.push(
                    context,
                   MaterialPageRoute(builder:(context)=>LandingPage()),
                    );
                }
               
              ),
              ListTile(
                title: Text('Add friend'),
              )
            ],
          ),
        ),
        body:new Container(
          alignment: Alignment.centerLeft,
        color:CSSColors.cornflowerBlue,
         child:new GridView.count(
          padding: const EdgeInsets.all(30),
          childAspectRatio: (1.5),
          crossAxisCount: 2,children: <Widget>[
            GridTile(
              child:new InkResponse(
              enableFeedback: true,
              child:new Text('Inspirational',style: TextStyle(fontSize: 20.0,fontFamily: 'Montserrat')),
              onTap:()=>Navigator.push(
                    context,
                   MaterialPageRoute(builder:(context)=>new QuotesPage(content:["When one door closes, another door opens","The best preperation for tomorrow is doing your best today"])),
                    )
            ),
              
            ),
            GridTile(child:new InkResponse(
              enableFeedback: true,
              child:new Text('Existential',style: TextStyle(fontSize: 20.0,fontFamily: 'Montserrat')),
              onTap:()=>Navigator.push(
                    context,
                   MaterialPageRoute(builder:(context)=>new QuotesPage(content:["God is dead. God remains dead. And we have killed him. Yet his shadow still looms. How shall we comfort ourselves, the murderers of all murderers? What was holiest and mightiest of all that the world has yet owned has bled to death under our knives; who will wipe this blood off us? What water is there for us to clean","To live is to suffer, to survive is to find some meaning in the suffering."])),
                    )
            ),
              
            ),
             GridTile(child:new InkResponse(
              enableFeedback: true,
              child:new Text('Funny',style: TextStyle(fontSize: 20.0,fontFamily: 'Montserrat')),
              onTap:()=>Navigator.push(
                    context,
                   MaterialPageRoute(builder:(context)=>new QuotesPage(content:["No man has a good enough memory to be a successful liar.","Don't take life too seriously.You will never get out of it alive."])),
                    )
            ),
              
            ),
             GridTile(child:new InkResponse(
              enableFeedback: true,
              child:new Text('Philisophical',style: TextStyle(fontSize: 20.0,fontFamily: 'Montserrat')),
              onTap:()=>Navigator.push(
                    context,
                   MaterialPageRoute(builder:(context)=>new QuotesPage(content:["A creative man is motivated by the desire to achieve, not the desire to beat others","Kind words do not cost much. Yet they accomplish much."])),
                    )
            ),
              
            ),
             GridTile(child:new InkResponse(
              enableFeedback: true,
              child:new Text('Biblical',style: TextStyle(fontSize: 20.0,fontFamily: 'Montserrat')),
              onTap:()=>Navigator.push(
                    context,
                   MaterialPageRoute(builder:(context)=>new QuotesPage(content:["The Bible shows the way to go to heaven, not the way the heavens go","In the Bible, God offered the Pharaoh freedom if he would just let the oppressed people free to go to the land of milk and honey. But the Pharaoh disobeyed, and he was destroyed."])),
                    )
            ),
              
            ),
             GridTile(child:new InkResponse(
              enableFeedback: true,
              child:new Text('Sad',style: TextStyle(fontSize: 20.0,fontFamily: 'Montserrat')),
              onTap:()=>Navigator.push(
                    context,
                   MaterialPageRoute(builder:(context)=>new QuotesPage(content:["Tears come from the heart and not from the brain","It's sad when someone you know becomes someone you knew."])),
                    )
            ),
              
            ),

          ],
        ),
        
        )
      ),
     
         
      
      
      );
    
    
  }
}