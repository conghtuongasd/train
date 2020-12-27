import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'widgets/timeline.dart';

class TrainBetweenStations extends StatefulWidget {
  @override
  _TrainBetweenStationsState createState() => _TrainBetweenStationsState();
}

class _TrainBetweenStationsState extends State<TrainBetweenStations> {
  TextEditingController _fromController = TextEditingController(text: "BABLAB");
  TextEditingController _toController = TextEditingController(text: "DETHLI");
  FocusNode _focus = new FocusNode();

  TextEditingController _controller =
      new TextEditingController(text: DateTime.now().toString());
  bool isCheck = false;

  @override
  void initState() {
    _focus.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(children: [
              Container(
                  margin:
                      EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 28),
                  padding:
                      EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff4e72d4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: 60,
                              child: IconButton(
                                  icon: Icon(Ionicons.ios_arrow_back,
                                      color: Colors.white),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  })),
                          Expanded(
                              child: Text(
                            "Train Between Stations",
                            style: TextStyle(color: Colors.white),
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            child: CTimeLine(),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: TextField(
                                    controller: _fromController,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        suffixIcon: Icon(Ionicons.ios_close,
                                            color: Colors.white),
                                        isDense: true,
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(top: 10),
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    controller: _toController,
                                    decoration: InputDecoration(
                                        suffixIcon: Icon(
                                          Ionicons.ios_close,
                                          color: Colors.white,
                                        ),
                                        isDense: true,
                                        border: InputBorder.none),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 40,
                            alignment: Alignment.center,
                            child: RotatedBox(
                                quarterTurns: 3,
                                child: Icon(
                                  Ionicons.ios_swap,
                                  size: 35,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              controller: _controller,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      icon: Icon(Ionicons.ios_arrow_down,
                                          color: Colors.white),
                                      onPressed: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime(2025),
                                        ).then((value) => _controller.text =
                                            value.toString());
                                      }),
                                  isDense: true,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: 60,
                              child: Checkbox(
                                value: isCheck,
                                onChanged: (e) {
                                  setState(() {
                                    isCheck = e;
                                  });
                                },
                                activeColor: Colors.white,
                                checkColor: Colors.white,
                                hoverColor: Colors.white,
                              )),
                          Expanded(
                              child: Text(
                            "Show trains only for this date",
                            style: TextStyle(color: Colors.white),
                          ))
                        ],
                      ),
                    ],
                  )),
              Positioned(
                  bottom: -0,
                  right: 28,
                  child: ClipOval(
                    child: Material(
                      color: Colors.yellow, // button color
                      child: InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                            width: 56,
                            height: 56,
                            child: Icon(
                              Ionicons.ios_arrow_forward,
                              color: Colors.white,
                            )),
                        onTap: () {},
                      ),
                    ),
                  )),
            ]),
          ],
        ),
      ),
    );
  }
}
