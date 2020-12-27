import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hexcolor/hexcolor.dart';

class MyTrips extends StatefulWidget {
  @override
  _MyTripsState createState() => _MyTripsState();
}

class _MyTripsState extends State<MyTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        
        title: Text(
          "Chuyến Đi Của Tôi",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        
      actions: [
          IconButton(
              icon: Icon(
                Feather.plus,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      
      body: new DefaultTabController(
  length: 2,
  child: new Scaffold(
    appBar: new AppBar(
      backgroundColor: HexColor("#4b6fd8"),
      flexibleSpace: new Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          new TabBar(
            indicatorColor: Colors.yellow,
            labelStyle: TextStyle(fontSize: 15),
            labelColor: Colors.black,
            tabs: [
              new Tab(text: "SẮP TỚI"),
              new Tab(text: "TRƯỚC ĐÂY",),
            ],
          ),
        ],
      ),
    ), 
              body: TabBarView(
            children: [
              new Center(
  child: new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child:
        new Text(
        'Bạn không có chuyến đi nào sắp tới',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),),
       Align(
          alignment: Alignment.center,
          child: RaisedButton(
            onPressed: () {},
            child: const Text('THÊM NGAY', style: TextStyle(fontSize: 20, color: Colors.black)),
            padding: EdgeInsets.all(15),
            color: Colors.yellowAccent,
            textColor: Colors.white,
            elevation: 3,
          ),
        ),
    ],
  ),
),
              new Center(
  child: new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child:
        new Text(
        'Bạn không có chuyến đi nào trước đây',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),),
       Align(
          alignment: Alignment.center,
          child: RaisedButton(
            onPressed: () {},
            child: const Text('THÊM NGAY', style: TextStyle(fontSize: 20, color: Colors.black)),
            padding: EdgeInsets.all(15),
            color: Colors.yellowAccent,
            textColor: Colors.white,
            elevation: 3,
          ),
        ),
    ],
  ),
),
            ],
          ),
  ),
  
  
      ),
);
  }
}