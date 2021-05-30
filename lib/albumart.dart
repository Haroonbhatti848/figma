import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class AlbumArt extends StatelessWidget {
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
              child: Image.asset('assets/n.jpg', fit: BoxFit.fill,)),
          subtitle: Container(
 padding: EdgeInsets.only(top: 10),
            alignment: Alignment.topCenter,
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text("Tuhme Dillagi" ,
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,fontSize:10)),
         Text("Nusrat ",style:TextStyle(color: Colors.grey,fontSize:8,fontWeight:FontWeight.normal                 ),)
       ],
    )
    // RichText(text:TextSpan(text: "Tuhme Dillagi" ,
    //                 style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,fontSize:10),
    //                  children:<TextSpan> [
    //                TextSpan(text:"\nNusrat ", style:TextStyle(color: Colors.grey,fontSize:8,fontWeight:FontWeight.normal                 ), )
    //
    //
    //           ]))

          ) ,
        ),
      ),


    );
      // Column(
      // children:[
      //
      // Container(
      //
      // height:160,
      // width: 140,
      // padding: EdgeInsets.only(top: 5, right: 40, left: 6, bottom: 20),
      // margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      //
      //    child:ClipRRect(
      //       borderRadius: BorderRadius.circular(10),
      //        child:Stack(children: [
      //          Image.asset('assets/n.jpg', fit: BoxFit.fill,
      //          ),
      //
      //          Padding(padding: EdgeInsets.only(left: 15, top: 100),
      //
      //              child: RichText(text:TextSpan(text: "TuhmeDillagi" ,
      //                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize:10),
      //                  children:<TextSpan> [
      //                  TextSpan(text:"\nNusrat Fateh ",style:TextStyle(color: Colors.black87,fontWeight:FontWeight.normal,fontStyle: FontStyle.italic ) )
      //
      //
      //          ]))
      //
      //         ),
      //   ]
      //        ) ),
      //
      //    ),
      //
      // ] );
  }

}