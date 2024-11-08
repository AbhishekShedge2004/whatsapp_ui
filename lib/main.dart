import "package:flutter/material.dart";
import "package:whatsapp_ui/ui/Chats.dart";
import "package:whatsapp_ui/ui/splash_screen.dart";

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );

  }
}

