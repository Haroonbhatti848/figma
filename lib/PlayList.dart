import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PlayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 165,

      child: InkWell(
        onTap: (){},
        child: ListTile(
          title:  ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset('assets/Rahat.jpg', fit: BoxFit.fill,)),
          subtitle: Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              child: RichText(text:TextSpan(text: "Zaroori tha" ,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize:10),
                //  children:<TextSpan> [
                //    TextSpan(text:"\nRahat Fateh ",style:TextStyle(color: Colors.grey,fontSize:8,fontWeight:FontWeight.normal,fontStyle: FontStyle.italic ) )


                //  ]
    )
              )

          ) ,
        ),
      ),


    );
  }
}
