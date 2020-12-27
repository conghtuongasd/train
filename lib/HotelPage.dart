import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Hotels extends StatefulWidget {
  @override
  _HotelsState createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  int groupValue = 0;
  DateTime selectedDate = DateTime.now();
  String checkinDate = "Ngày vào";
  String checkoutDate = "Ngày ra";

  Future<Null> _selectCheckinDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        checkinDate = picked.toString();
      });
  }

  Future<Null> _selectCheckoutDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        checkoutDate = picked.toString();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          "Đặt Khách Sạn",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, right: 20, bottom: 40, left: 5),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      width: 48,
                      child: Icon(
                        Ionicons.ios_train,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: "Nguồn",
                          contentPadding: EdgeInsets.only(left: 0),
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 16),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 48,
                      child: Icon(
                        AntDesign.calendar,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        _selectCheckinDate(context);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.white,
                        ))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              checkinDate,
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Ionicons.ios_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 48,
                      child: Icon(
                        AntDesign.calendar,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        _selectCheckoutDate(context);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.white,
                        ))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              checkoutDate,
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Ionicons.ios_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: -15,
            right: 20,
            child: MaterialButton(
              onPressed: () {},
              color: Colors.yellow,
              textColor: Colors.white,
              child: Icon(
                Icons.arrow_forward,
                size: 24,
              ),
              padding: EdgeInsets.all(16),
              shape: CircleBorder(),
            ),
          )
        ],
      ),
    );
  }
}
