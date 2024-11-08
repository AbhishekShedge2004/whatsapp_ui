import "dart:async";
import "package:flutter/material.dart";
import "package:whatsapp_ui/ui/Chats.dart";
class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Chats();
      },));
    },);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/icons/whatsapp_logo.png"))
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text("from"),
                  SizedBox(
                    height: 12,
                  ),
                  Text("FACEBOOK",style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 21),)
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}