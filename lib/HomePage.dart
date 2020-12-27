import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hexagon/hexagon_type.dart';
import 'package:hexagon/hexagon_widget.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:train/TrainBetweenStations.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Đường Sắt Việt Nam",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Feather.bell,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 20.0, right: 20.0, bottom: 10, left: 20.0),
              margin: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xff80deea),
                  image: DecorationImage(
                      alignment: Alignment.centerRight,
                      scale: 4.5,
                      fit: BoxFit.scaleDown,
                      image: AssetImage('assets/images/train.png')),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(FontAwesome.info, size: 30, color: Colors.white),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Trạng thái PNR",
                          style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 60 / 100,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Nhập số PNR",
                          contentPadding: const EdgeInsets.only(top: 10),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle(
                              color: HexColor("#518D95"), fontSize: 20),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2)),
                          border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2))),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.only(top: 10),
                    child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "OK",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Color(0xff85C0DE)),
                  )
                ],
              ),
            ),
            Container(
              height: 480,
              child: GridView.count(
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 3 / 4,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => TrainBetweenStations()));
                    },
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            HexagonWidget.pointy(
                              width: 80,
                              elevation: 0,
                              color: HexColor("#4B6FD8"),
                              child: AspectRatio(
                                aspectRatio: HexagonType.POINTY.ratio,
                                child: Icon(
                                  Icons.train_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10.0),
                              width: 110,
                              height: 40,
                              alignment: Alignment.topCenter,
                              child: Text("Thông Tin Hành Trình",
                                  style: TextStyle(fontSize: 15),
                                  textAlign: TextAlign.center),
                            )
                          ],
                        )),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          HexagonWidget.pointy(
                            width: 80,
                            elevation: 0,
                            color: HexColor("#14b28a"),
                            child: AspectRatio(
                              aspectRatio: HexagonType.POINTY.ratio,
                              child: Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: 110,
                            height: 40,
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Lịch tàu & Hướng Dẫn Viên",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          HexagonWidget.pointy(
                            width: 80,
                            elevation: 0,
                            color: HexColor("#E06A0A"),
                            child: AspectRatio(
                              aspectRatio: HexagonType.POINTY.ratio,
                              child: Icon(
                                Icons.airline_seat_individual_suite,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: 110,
                            height: 40,
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Kiểm Tra Ghế",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          HexagonWidget.pointy(
                            width: 80,
                            elevation: 0,
                            color: HexColor("#893ca9"),
                            child: AspectRatio(
                              aspectRatio: HexagonType.POINTY.ratio,
                              child: Icon(
                                Icons.handyman_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: 110,
                            height: 40,
                            alignment: Alignment.topCenter,
                            child: Text("Tìm Giá Vé",
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.center),
                          )
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          HexagonWidget.pointy(
                            width: 80,
                            elevation: 0,
                            color: HexColor("#eebb00"),
                            child: AspectRatio(
                              aspectRatio: HexagonType.POINTY.ratio,
                              child: Icon(
                                Icons.radio_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: 110,
                            height: 40,
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Trạng Thái Tàu",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          HexagonWidget.pointy(
                            width: 80,
                            elevation: 0,
                            color: HexColor("#24c75a"),
                            child: AspectRatio(
                              aspectRatio: HexagonType.POINTY.ratio,
                              child: Icon(
                                Icons.fastfood_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: 110,
                            height: 40,
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Đồ Ăn Trên Tàu",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          HexagonWidget.pointy(
                            width: 80,
                            elevation: 0,
                            color: HexColor("#e06a0a"),
                            child: AspectRatio(
                              aspectRatio: HexagonType.POINTY.ratio,
                              child: Icon(
                                Icons.live_tv_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: 110,
                            height: 40,
                            alignment: Alignment.topCenter,
                            child: Text("Thông Tin Nhà Ga",
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.center),
                          )
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          HexagonWidget.pointy(
                            width: 80,
                            elevation: 0,
                            color: HexColor("#14b28a"),
                            child: AspectRatio(
                              aspectRatio: HexagonType.POINTY.ratio,
                              child: Icon(
                                Icons.map_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: 110,
                            height: 40,
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Sơ Đồ Chỗ Ngồi",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          HexagonWidget.pointy(
                            width: 80,
                            elevation: 0,
                            color: HexColor("#4b6fd8"),
                            child: AspectRatio(
                              aspectRatio: HexagonType.POINTY.ratio,
                              child: Icon(
                                Icons.book_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: 110,
                            height: 40,
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Đặt/Hủy",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Card(
                  color: HexColor("#034a80"),
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10, bottom: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.alarm_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    title: Text(
                      'Nhắc Nhở Điểm Đến',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Card(
                  color: HexColor("#2682d5"),
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10, bottom: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    title: Text(
                      'Các Chuyến Tàu Đã Lên Lịch',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Card(
                  color: HexColor("#e13329"),
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10, bottom: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    title: Text(
                      'Chuyến Tàu Bị Hủy',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Card(
                  color: HexColor("#e06a0a"),
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10, bottom: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.railway_alert,
                      color: Colors.white,
                      size: 40,
                    ),
                    title: Text(
                      'Tàu chuyển hướng',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
