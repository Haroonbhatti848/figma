import 'package:flutter/material.dart';
import 'albumart.dart';
import 'PlayList.dart';
import 'likedsongs.dart';
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
// routes: {
//         '/n':(_) =>HomePage(),
//   '/likedsongs':(_)=>LikedSongs(),
// },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  double slidervalue = 2;

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
            icon: Icon(Icons.drag_handle_sharp, size: 40, color: Colors.black),
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
                padding: EdgeInsets.only(top: 7),
                margin: EdgeInsets.only(left: 16, top: 10),
                child: Text(
                  "Recommended For You",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),

            // Expanded(
            //child:
            Container(
              //height: height/2.5,
              height: 140,

              child: ListView.builder(
                itemBuilder: (context, index) {
                  return AlbumArt();
                },
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),

            // ),
            Container(
                padding: EdgeInsets.only(top: 7),
                margin: EdgeInsets.only(left: 16, top: 10),
                child: Text(
                  "My Playlist",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
            Expanded(
              child: Container(
                height: 140,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return PlayList();
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 4),
              // decoration: BoxDecoration(color: Colors.blueGrey, boxShadow: [
              //   BoxShadow(
              //     color: Colors.black45,
              //     //blurRadius: 8.0,
              //   )
              // ]),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SliderTheme(
                  // data:SliderThemeData(
                  //   trackHeight: 5,
                  //   thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)
                  // )
                  // ),

                  SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 3,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
                      trackShape: CustomTrackShape(),
                    ),
                    child: SizedBox(
                      height: 5,
                      child: Slider(
                        min: 0,
                        max: 20,
                        value: slidervalue,
                        activeColor: Colors.grey,
                        inactiveColor: Colors.black,
                        onChanged: (value) {
                          setState(() {
                            slidervalue = value;
                          });
                        },
                      ),
                    ),
                  ),

                  //Padding(

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: FractionalOffset.topCenter,
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/n.jpg',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Thume Dillagi",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Nusrat",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                        ),
                      SizedBox(width: 40,),
                      IconButton(
                        icon: Icon(Icons.skip_previous),
                      ),
                      IconButton(icon: Icon(Icons.play_arrow)),
                      IconButton(
                        icon: Icon(Icons.skip_next),
                      ),
                    ],
                  ),
                  //  )
                ],
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
                padding: const EdgeInsets.only(left: 15.0, top: 50.0),
                icon: Icon(
                  Icons.close_rounded,
                  size: 40,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )),
          Expanded(
              flex: 8,
              child: ListView(children: [
                ListTile(
                    leading: new Icon(
                      Icons.perm_identity_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Profile",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    dense: true,
                    selected: true),
                ListTile(
                    leading: new Icon(
                      Icons.favorite,
                      size: 40,
                      color: Colors.black,

                    ),
                    title: Text(
                      "Liked Songs",

                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LikedSongs();
                      }));
                    },

                    dense: true,
                    selected: true),
                ListTile(
                  leading: new Icon(
                    Icons.language,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Language",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                  dense: true,
                  selected: true,
                ),
                ListTile(
                  leading: new Icon(
                    Icons.chat,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Contact Us",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                  dense: true,
                  selected: true,
                ),
                ListTile(
                  leading: new Icon(
                    Icons.wb_incandescent,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Faqs",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                  dense: true,
                  selected: true,
                ),
                ListTile(
                  leading: new Icon(
                    Icons.settings,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                  dense: true,
                  selected: true,
                ),
              ])),
        ])));

    //  )
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    @required RenderBox parentBox,
    Offset offset = Offset.zero,
    @required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
