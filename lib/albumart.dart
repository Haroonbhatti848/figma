import 'package:flutter/material.dart';
class AlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height:260 ,
        width: 260,
        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
        // child:Row(children:[Expanded(child:Image.asset("images/nust_logo.png")),])
        child: Image.asset('assets/n.jpeg   ',)
    );
  }
}