import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final _pexel = "images/pexel1.jpg";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: MyAppBar(),
        persistentFooterButtons: [
          IconButton(onPressed: null, icon: Icon(Icons.zoom_out_map)),
          IconButton(onPressed: null, icon: Icon(Icons.account_balance_outlined)),
          IconButton(onPressed: null, icon: Icon(Icons.add_comment_outlined)),
          IconButton(onPressed: null, icon: Icon(Icons.access_alarm_outlined)),
          IconButton(onPressed: null, icon: Icon(Icons.person_add)),
          IconButton(onPressed: null, icon: Icon(Icons.travel_explore_outlined)),
        ],
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),

          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSection(),
              BodySection(),
            ],
          ),
          
        ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: null,
        icon: Icon(Icons.menu, color: Colors.white),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            )),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.more_vert, color: Colors.white),
        ),
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_pexel),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Stack(
            children: [
              Align(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.place,
                    color: Colors.white,
                  ),
                  Text(
                    "Kathmandu, Nepal",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              )),
              Positioned(
                  bottom: 135,
                  left: 255,
                  child: Row(
                    children: [
                      Icon(
                        Icons.wb_sunny_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "30 C",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
              Positioned(
                  bottom: 10,
                  left: 10,
                  height: 50,
                  right: 10,
                  child: Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search a place for events",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10)),
                    ),
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              offset: Offset(0, 3))
                        ]),
                  ))
            ],
          ),
        ));
  }
}

class BodySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "NEARBY",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Carousel(),
          SizedBox(height:30),
          Row(
            children: [
              Text(
                "CATEGORIES",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.party_mode,size: 40,),
              Icon(Icons.person,size: 40,),
              Icon(Icons.restaurant_menu,size: 40,),
              Icon(Icons.food_bank_outlined,size: 40,),
              Icon(Icons.meeting_room_outlined,size: 40,)
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text(
                "RECOMMENDED",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.all(20),
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image:AssetImage("./images/pexel1.jpg"),
                fit: BoxFit.cover,
                
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(0, 3),
                    blurRadius: 5
                  )
                ],
                
            ),
            child: Stack(
              children:[
                Positioned(
                  top: 0,
                  left:0,
                  child: Icon(Icons.chair_outlined,color: Colors.white,)
                  ),
                Positioned(
                  right: -10,
                  top: -8,
                
                  child: MaterialButton(
                      color: Colors.red,
                      shape: CircleBorder(),
                      onPressed: null,
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ) 
                  ),
                  Positioned(
                    bottom: 35,
                    left: 0,
                    child: Text("Buddanat shuppa",style: TextStyle(color: Colors.white,fontSize: 20),)
                    ),
                    Positioned(
                      bottom: 5,
                      left: 0,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.chair_outlined,color: Colors.white,),
                              Text(" 200 km",style: TextStyle(color: Colors.white,fontSize: 18)),
                            ],
                          ),
                          
                        ],
                      )
                      ),
                      Positioned(
                        bottom: 5,
                        right: 0,
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_wallet_outlined,color: Colors.white,),
                            Text(" 500",style: TextStyle(color: Colors.white),)
                          ],
                        )
                        )
              ]
            ),
          ),
    
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  final List imageList = [
    {
      'picture': "images/pexel1.jpg",
      'price': 50,
      'kilo': 13.5,
      'desc': "Palan Durbar"
    },
    {
      'picture': "images/pexel2.jpg",
      'price': 25,
      'kilo': 10,
      'desc': "lonfon app"
    },
    {
      'picture': "images/pexel1.jpg",
      'price': 30,
      'kilo': 50,
      'desc': "swisterland"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GFItemsCarousel(
      rowCount: 2,
      children: imageList.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(url['picture']),
                    fit: BoxFit.cover,
                  )),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 5,
                          left: 5,
                          child: Row(
                            children: [
                              Icon(
                                Icons.account_balance_wallet_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                url['price'].toString(),
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.message_sharp,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(url['kilo'].toString() + " km",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                      Positioned(
                          bottom: 5,
                          left: 5,
                          child: Text(
                            url['desc'].toString(),
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                )),
          );
        },
      ).toList(),
    );
  }
}
