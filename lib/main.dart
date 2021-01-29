import 'package:flutter/material.dart';

import 'albumart.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.blueGrey,
        // backgroundColor: Colors.blueGrey,
          canvasColor: Colors.blueGrey,
          scaffoldBackgroundColor: Colors.blueGrey),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        key: _scaffoldKey,
        //backgroundColor: Colors.blueGrey,

        appBar: new AppBar(
          backgroundColor: Colors.blueGrey,
          leading: IconButton(
            icon:
            Icon(Icons.drag_handle_sharp, size: 40, color: Colors.black),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
          elevation: 10.0,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 40,
              color: Colors.black,
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // padding:EdgeInsets.only(left:7),
                margin: EdgeInsets.only(left:16,top: 10),
                child:Text("Recommended For You",style: TextStyle(fontSize: 25,color: Colors.black),)),

            Container(
              height: height/2.5,

              child: ListView.builder(itemBuilder: (context,index){
                return AlbumArt();
              },
                itemCount: 3,
                scrollDirection:Axis.horizontal ,
              ),

            ),
          ],
        ),

        drawer: Drawer(

            child: Column(children: [
              Expanded(
                  child: Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.only(left: 13.0, top: 50.0),
                        icon: Icon(Icons.close_rounded,size: 40, color: Colors.black,
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  )),
              Expanded(
                  flex: 8,
                  child: ListView(children: [
                    ListTile(
                        leading: new Icon(Icons.perm_identity_sharp,size: 40,color: Colors.black,),
                        title: Text("Profile",style: TextStyle(color:Colors.black,fontWeight:FontWeight.w500, fontSize: 25), ),
                        dense: true,
                        selected: true),
                    ListTile(
                        leading: new Icon(Icons.favorite,size: 40,color: Colors.black,),
                        title: Text("Liked Songs",style: TextStyle(color:Colors.black,fontWeight:FontWeight.w500,fontSize: 25),),
                        dense: true,
                        selected: true),
                    ListTile(
                      leading: new Icon(Icons.language,size: 40,color: Colors.black,),
                      title: Text("Language",style: TextStyle(color:Colors.black,fontWeight:FontWeight.w500,fontSize: 25),),
                      dense: true,
                      selected: true,
                    ),
                    ListTile(
                      leading: new Icon(Icons.chat,size: 40,color: Colors.black,),
                      title: Text("Contact Us",style: TextStyle(color:Colors.black,fontWeight:FontWeight.w500,fontSize: 25),),
                      dense: true,
                      selected: true,
                    ),
                    ListTile(
                      leading: new Icon(Icons.wb_incandescent,size: 40,color: Colors.black,),
                      title: Text("Faqs",style: TextStyle(color:Colors.black,fontWeight:FontWeight.w500,fontSize: 25),),
                      dense: true,
                      selected: true,
                    ),
                    ListTile(
                      leading: new Icon(Icons.settings,size: 40,color: Colors.black,),
                      title: Text("Settings",style: TextStyle(color:Colors.black,fontWeight:FontWeight.w500,fontSize: 25),),
                      dense: true,
                      selected: true,
                    ),
                  ])),
            ]



            )));

    //  )
  }
}
